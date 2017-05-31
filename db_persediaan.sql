--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: persediaan; Type: TABLE; Schema: public; Owner: persediaan; Tablespace: 
--

CREATE TABLE persediaan (
    id integer NOT NULL,
    id_barang integer,
    jumlah integer,
    harga numeric(15,0) DEFAULT 0,
    tanggal date DEFAULT now(),
    id_jenis_transaksi smallint
);


ALTER TABLE public.persediaan OWNER TO persediaan;

--
-- Name: view_gabung; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_gabung AS
 SELECT row_number() OVER (PARTITION BY persediaan.id_barang ORDER BY persediaan.id_barang, persediaan.id) AS serial,
    persediaan.id,
    persediaan.id_barang,
    persediaan.jumlah,
    persediaan.harga,
    persediaan.id_jenis_transaksi
   FROM persediaan
  WHERE (persediaan.id_jenis_transaksi = 1)
UNION ALL
 SELECT 0 AS serial,
    persediaan.id,
    persediaan.id_barang,
    (0 - persediaan.jumlah) AS jumlah,
    persediaan.harga,
    persediaan.id_jenis_transaksi
   FROM persediaan
  WHERE (persediaan.id_jenis_transaksi = 2)
  ORDER BY 3, 1, 2;


ALTER TABLE public.view_gabung OWNER TO persediaan;

--
-- Name: view_saldo; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_saldo AS
 SELECT view_gabung.serial,
    view_gabung.id,
    view_gabung.id_barang,
    view_gabung.jumlah,
    view_gabung.harga,
    view_gabung.id_jenis_transaksi,
    sum(view_gabung.jumlah) OVER (PARTITION BY view_gabung.id_barang ORDER BY view_gabung.serial, view_gabung.id) AS saldo
   FROM view_gabung;


ALTER TABLE public.view_saldo OWNER TO persediaan;

--
-- Name: beban_persediaan; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW beban_persediaan AS
 SELECT view_saldo.serial,
    view_saldo.id,
    view_saldo.id_barang,
    view_saldo.jumlah,
    view_saldo.harga,
    view_saldo.id_jenis_transaksi,
    view_saldo.saldo,
        CASE
            WHEN ((view_saldo.id_jenis_transaksi = 1) AND (view_saldo.saldo < 0)) THEN (view_saldo.jumlah)::bigint
            WHEN ((view_saldo.id_jenis_transaksi = 1) AND (view_saldo.saldo < view_saldo.jumlah)) THEN (view_saldo.jumlah - view_saldo.saldo)
            ELSE (0)::bigint
        END AS jumlah_beban
   FROM view_saldo;


ALTER TABLE public.beban_persediaan OWNER TO persediaan;

--
-- Name: persediaan_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan
--

CREATE SEQUENCE persediaan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persediaan_id_seq OWNER TO persediaan;

--
-- Name: persediaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan
--

ALTER SEQUENCE persediaan_id_seq OWNED BY persediaan.id;


--
-- Name: view_beban_persediaan_rinci; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_beban_persediaan_rinci AS
 SELECT beban_persediaan.id_barang,
    beban_persediaan.harga,
    beban_persediaan.jumlah_beban,
    (beban_persediaan.harga * (beban_persediaan.jumlah_beban)::numeric) AS jumlah_harga_beban
   FROM beban_persediaan
  WHERE (beban_persediaan.jumlah_beban > 0);


ALTER TABLE public.view_beban_persediaan_rinci OWNER TO persediaan;

--
-- Name: view_beban_persediaan_rekap; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_beban_persediaan_rekap AS
 SELECT view_beban_persediaan_rinci.id_barang,
    sum(view_beban_persediaan_rinci.jumlah_beban) AS jumlah_beban,
    sum(view_beban_persediaan_rinci.jumlah_harga_beban) AS jumlah_harga_beban
   FROM view_beban_persediaan_rinci
  GROUP BY view_beban_persediaan_rinci.id_barang;


ALTER TABLE public.view_beban_persediaan_rekap OWNER TO persediaan;

--
-- Name: view_masuk_rinci; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_masuk_rinci AS
 SELECT view_saldo.id_barang,
    view_saldo.jumlah,
    view_saldo.harga,
    view_saldo.id_jenis_transaksi,
    view_saldo.saldo,
        CASE
            WHEN ((view_saldo.saldo > 0) AND (view_saldo.jumlah >= view_saldo.saldo)) THEN view_saldo.saldo
            WHEN ((view_saldo.saldo > 0) AND (view_saldo.jumlah < view_saldo.saldo)) THEN (view_saldo.jumlah)::bigint
            ELSE (0)::bigint
        END AS saldo_barang,
        CASE
            WHEN (view_saldo.jumlah > 0) THEN view_saldo.jumlah
            ELSE 0
        END AS jumlah_masuk
   FROM view_saldo;


ALTER TABLE public.view_masuk_rinci OWNER TO persediaan;

--
-- Name: view_masuk_rekap; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_masuk_rekap AS
 SELECT view_masuk_rinci.id_barang,
    view_masuk_rinci.saldo_barang,
    ((view_masuk_rinci.saldo_barang)::numeric * view_masuk_rinci.harga) AS jumlah_harga_saldo,
    view_masuk_rinci.jumlah_masuk,
    ((view_masuk_rinci.jumlah_masuk)::numeric * view_masuk_rinci.harga) AS jumlah_harga_masuk
   FROM view_masuk_rinci;


ALTER TABLE public.view_masuk_rekap OWNER TO persediaan;

--
-- Name: view_persediaan; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_persediaan AS
 SELECT view_saldo.id_barang,
    view_saldo.harga,
    view_saldo.id_jenis_transaksi,
    view_saldo.saldo,
        CASE
            WHEN ((view_saldo.saldo > 0) AND (view_saldo.jumlah >= view_saldo.saldo)) THEN view_saldo.saldo
            WHEN ((view_saldo.saldo > 0) AND (view_saldo.jumlah < view_saldo.saldo)) THEN (view_saldo.jumlah)::bigint
            ELSE (0)::bigint
        END AS saldo_barang
   FROM view_saldo;


ALTER TABLE public.view_persediaan OWNER TO persediaan;

--
-- Name: view_persediaan_rinci; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_persediaan_rinci AS
 SELECT view_persediaan.id_barang,
    view_persediaan.harga,
    view_persediaan.saldo_barang,
    ((view_persediaan.saldo_barang)::numeric * view_persediaan.harga) AS jumlah_harga
   FROM view_persediaan
  WHERE (view_persediaan.saldo_barang > 0);


ALTER TABLE public.view_persediaan_rinci OWNER TO persediaan;

--
-- Name: view_persediaan_rekap; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_persediaan_rekap AS
 SELECT view_persediaan_rinci.id_barang,
    sum(view_persediaan_rinci.saldo_barang) AS saldo_barang,
    sum(view_persediaan_rinci.jumlah_harga) AS jumlah_harga
   FROM view_persediaan_rinci
  GROUP BY view_persediaan_rinci.id_barang;


ALTER TABLE public.view_persediaan_rekap OWNER TO persediaan;

--
-- Name: view_rekap_total; Type: VIEW; Schema: public; Owner: persediaan
--

CREATE VIEW view_rekap_total AS
 SELECT sum(view_masuk_rekap.jumlah_masuk) AS jumlah_masuk_total,
    sum(view_masuk_rekap.jumlah_harga_masuk) AS jumlah_harga_masuk_total,
    ((sum(view_masuk_rekap.jumlah_masuk))::numeric - sum(view_masuk_rekap.saldo_barang)) AS jumlah_keluar_total,
    (sum(view_masuk_rekap.jumlah_harga_masuk) - sum(view_masuk_rekap.jumlah_harga_saldo)) AS jumlah_harga_keluar_total,
    sum(view_masuk_rekap.saldo_barang) AS saldo_barang_total,
    sum(view_masuk_rekap.jumlah_harga_saldo) AS jumlah_harga_saldo_total
   FROM view_masuk_rekap
  GROUP BY view_masuk_rekap.id_barang;


ALTER TABLE public.view_rekap_total OWNER TO persediaan;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: persediaan
--

ALTER TABLE ONLY persediaan ALTER COLUMN id SET DEFAULT nextval('persediaan_id_seq'::regclass);


--
-- Data for Name: persediaan; Type: TABLE DATA; Schema: public; Owner: persediaan
--

COPY persediaan (id, id_barang, jumlah, harga, tanggal, id_jenis_transaksi) FROM stdin;
1	1	10	3000	2016-03-19	1
2	1	5	3200	2016-03-19	1
3	1	15	3500	2016-03-19	1
4	1	12	0	2016-03-19	2
5	2	8	2000	2016-03-19	1
6	2	5	2200	2016-03-19	1
7	2	9	0	2016-03-19	2
8	1	8	0	2016-03-19	2
9	1	10	4000	2016-03-19	1
\.


--
-- Name: persediaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan
--

SELECT pg_catalog.setval('persediaan_id_seq', 9, true);


--
-- Name: persediaan_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan; Tablespace: 
--

ALTER TABLE ONLY persediaan
    ADD CONSTRAINT persediaan_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO _postgresql;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

