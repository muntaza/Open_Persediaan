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
-- Name: tabungan; Type: TABLE; Schema: public; Owner: saldo; Tablespace: 
--

CREATE TABLE tabungan (
    id smallint NOT NULL,
    id_jenis_transaksi smallint,
    nilai numeric(15,0),
    tanggal date DEFAULT now(),
    CONSTRAINT tabungan_nilai_check CHECK ((nilai > (0)::numeric))
);


ALTER TABLE tabungan OWNER TO saldo;

--
-- Name: tabungan_id_seq; Type: SEQUENCE; Schema: public; Owner: saldo
--

CREATE SEQUENCE tabungan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tabungan_id_seq OWNER TO saldo;

--
-- Name: tabungan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: saldo
--

ALTER SEQUENCE tabungan_id_seq OWNED BY tabungan.id;


--
-- Name: view_saldo; Type: VIEW; Schema: public; Owner: saldo
--

CREATE VIEW view_saldo AS
 SELECT tabungan.id,
    tabungan.id_jenis_transaksi,
    tabungan.nilai AS masuk,
    NULL::numeric AS keluar,
    tabungan.nilai AS hitung
   FROM tabungan
  WHERE (tabungan.id_jenis_transaksi = 1)
UNION ALL
 SELECT tabungan.id,
    tabungan.id_jenis_transaksi,
    NULL::numeric AS masuk,
    tabungan.nilai AS keluar,
    ((0)::numeric - tabungan.nilai) AS hitung
   FROM tabungan
  WHERE (tabungan.id_jenis_transaksi = 2)
  ORDER BY 1;


ALTER TABLE view_saldo OWNER TO saldo;

--
-- Name: view_tabungan; Type: VIEW; Schema: public; Owner: saldo
--

CREATE VIEW view_tabungan AS
 SELECT view_saldo.id,
    view_saldo.id_jenis_transaksi,
    view_saldo.masuk,
    view_saldo.keluar,
    sum(view_saldo.hitung) OVER (ORDER BY view_saldo.id) AS saldo
   FROM view_saldo;


ALTER TABLE view_tabungan OWNER TO saldo;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: saldo
--

ALTER TABLE ONLY tabungan ALTER COLUMN id SET DEFAULT nextval('tabungan_id_seq'::regclass);


--
-- Data for Name: tabungan; Type: TABLE DATA; Schema: public; Owner: saldo
--

COPY tabungan (id, id_jenis_transaksi, nilai, tanggal) FROM stdin;
2	1	30	2016-03-18
3	2	20	2016-03-18
4	2	5	2016-03-18
5	1	10	2016-03-18
6	1	40	2016-03-18
\.


--
-- Name: tabungan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: saldo
--

SELECT pg_catalog.setval('tabungan_id_seq', 6, true);


--
-- Name: tabungan_pkey; Type: CONSTRAINT; Schema: public; Owner: saldo; Tablespace: 
--

ALTER TABLE ONLY tabungan
    ADD CONSTRAINT tabungan_pkey PRIMARY KEY (id);


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

