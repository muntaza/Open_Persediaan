--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: asal_usul; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.asal_usul (
    id integer NOT NULL,
    asal_usul character varying(200) NOT NULL
);


ALTER TABLE public.asal_usul OWNER TO persediaan5;

--
-- Name: asal_usul_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.asal_usul_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asal_usul_id_seq OWNER TO persediaan5;

--
-- Name: asal_usul_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.asal_usul_id_seq OWNED BY public.asal_usul.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO persediaan5;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO persediaan5;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO persediaan5;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO persediaan5;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO persediaan5;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO persediaan5;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO persediaan5;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO persediaan5;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO persediaan5;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO persediaan5;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO persediaan5;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO persediaan5;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: barang; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.barang (
    id integer NOT NULL,
    nama_barang character varying(200) NOT NULL,
    id_jenis_barang integer NOT NULL,
    id_satuan integer NOT NULL
);


ALTER TABLE public.barang OWNER TO persediaan5;

--
-- Name: barang_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_id_seq OWNER TO persediaan5;

--
-- Name: barang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.barang_id_seq OWNED BY public.barang.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO persediaan5;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO persediaan5;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO persediaan5;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO persediaan5;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO persediaan5;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO persediaan5;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO persediaan5;

--
-- Name: jenis_barang; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.jenis_barang (
    id integer NOT NULL,
    kode_jenis_barang character varying(40) NOT NULL,
    jenis_barang character varying(200) NOT NULL
);


ALTER TABLE public.jenis_barang OWNER TO persediaan5;

--
-- Name: jenis_barang_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.jenis_barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenis_barang_id_seq OWNER TO persediaan5;

--
-- Name: jenis_barang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.jenis_barang_id_seq OWNED BY public.jenis_barang.id;


--
-- Name: jenis_keluar; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.jenis_keluar (
    id integer NOT NULL,
    jenis_keluar character varying(200) NOT NULL
);


ALTER TABLE public.jenis_keluar OWNER TO persediaan5;

--
-- Name: jenis_keluar_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.jenis_keluar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenis_keluar_id_seq OWNER TO persediaan5;

--
-- Name: jenis_keluar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.jenis_keluar_id_seq OWNED BY public.jenis_keluar.id;


--
-- Name: jenis_transaksi; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.jenis_transaksi (
    id integer NOT NULL,
    jenis_transaksi character varying(40) NOT NULL
);


ALTER TABLE public.jenis_transaksi OWNER TO persediaan5;

--
-- Name: jenis_transaksi_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.jenis_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenis_transaksi_id_seq OWNER TO persediaan5;

--
-- Name: jenis_transaksi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.jenis_transaksi_id_seq OWNED BY public.jenis_transaksi.id;


--
-- Name: kabupaten; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.kabupaten (
    id integer NOT NULL,
    kode_kabupaten character varying(20) NOT NULL,
    nama_kabupaten character varying(200) NOT NULL,
    id_provinsi integer NOT NULL
);


ALTER TABLE public.kabupaten OWNER TO persediaan5;

--
-- Name: kabupaten_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.kabupaten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kabupaten_id_seq OWNER TO persediaan5;

--
-- Name: kabupaten_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.kabupaten_id_seq OWNED BY public.kabupaten.id;


--
-- Name: keluar; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.keluar (
    id_transaksi integer NOT NULL,
    id_jenis_keluar integer NOT NULL,
    id_pegawai integer NOT NULL
);


ALTER TABLE public.keluar OWNER TO persediaan5;

--
-- Name: lokasi_bidang; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.lokasi_bidang (
    id integer NOT NULL,
    kode_lokasi_bidang character varying(20) NOT NULL,
    nama_lokasi_bidang character varying(200) NOT NULL,
    id_kabupaten integer NOT NULL
);


ALTER TABLE public.lokasi_bidang OWNER TO persediaan5;

--
-- Name: lokasi_bidang_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.lokasi_bidang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lokasi_bidang_id_seq OWNER TO persediaan5;

--
-- Name: lokasi_bidang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.lokasi_bidang_id_seq OWNED BY public.lokasi_bidang.id;


--
-- Name: masuk; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.masuk (
    id_transaksi integer NOT NULL,
    id_asal_usul integer NOT NULL,
    id_pihak_ketiga integer NOT NULL
);


ALTER TABLE public.masuk OWNER TO persediaan5;

--
-- Name: pegawai; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.pegawai (
    id integer NOT NULL,
    nama_pegawai character varying(200) NOT NULL,
    nip character varying(60) NOT NULL,
    id_skpd integer NOT NULL,
    id_status_pegawai integer NOT NULL
);


ALTER TABLE public.pegawai OWNER TO persediaan5;

--
-- Name: pegawai_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.pegawai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pegawai_id_seq OWNER TO persediaan5;

--
-- Name: pegawai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.pegawai_id_seq OWNED BY public.pegawai.id;


--
-- Name: persediaan; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.persediaan (
    id integer NOT NULL,
    tanggal_kadaluarsa date,
    jumlah integer NOT NULL,
    harga numeric(15,0) NOT NULL,
    id_barang integer NOT NULL,
    id_transaksi integer NOT NULL
);


ALTER TABLE public.persediaan OWNER TO persediaan5;

--
-- Name: persediaan_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.persediaan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persediaan_id_seq OWNER TO persediaan5;

--
-- Name: persediaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.persediaan_id_seq OWNED BY public.persediaan.id;


--
-- Name: pihak_ketiga; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.pihak_ketiga (
    id integer NOT NULL,
    nama_pihak_ketiga character varying(200) NOT NULL,
    id_skpd integer NOT NULL
);


ALTER TABLE public.pihak_ketiga OWNER TO persediaan5;

--
-- Name: pihak_ketiga_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.pihak_ketiga_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pihak_ketiga_id_seq OWNER TO persediaan5;

--
-- Name: pihak_ketiga_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.pihak_ketiga_id_seq OWNED BY public.pihak_ketiga.id;


--
-- Name: provinsi; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.provinsi (
    id integer NOT NULL,
    kode_provinsi character varying(20) NOT NULL,
    nama_provinsi character varying(200) NOT NULL
);


ALTER TABLE public.provinsi OWNER TO persediaan5;

--
-- Name: provinsi_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.provinsi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provinsi_id_seq OWNER TO persediaan5;

--
-- Name: provinsi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.provinsi_id_seq OWNED BY public.provinsi.id;


--
-- Name: satuan; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.satuan (
    id integer NOT NULL,
    satuan character varying(60) NOT NULL
);


ALTER TABLE public.satuan OWNER TO persediaan5;

--
-- Name: satuan_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.satuan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satuan_id_seq OWNER TO persediaan5;

--
-- Name: satuan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.satuan_id_seq OWNED BY public.satuan.id;


--
-- Name: skpd; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.skpd (
    id integer NOT NULL,
    kode_skpd character varying(20) NOT NULL,
    nama_skpd character varying(200) NOT NULL,
    id_lokasi_bidang integer NOT NULL
);


ALTER TABLE public.skpd OWNER TO persediaan5;

--
-- Name: skpd_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.skpd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skpd_id_seq OWNER TO persediaan5;

--
-- Name: skpd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.skpd_id_seq OWNED BY public.skpd.id;


--
-- Name: status_pegawai; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.status_pegawai (
    id integer NOT NULL,
    status_pegawai character varying(40) NOT NULL
);


ALTER TABLE public.status_pegawai OWNER TO persediaan5;

--
-- Name: status_pegawai_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.status_pegawai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_pegawai_id_seq OWNER TO persediaan5;

--
-- Name: status_pegawai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.status_pegawai_id_seq OWNED BY public.status_pegawai.id;


--
-- Name: sub_skpd; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.sub_skpd (
    id integer NOT NULL,
    kode_sub_skpd character varying(20) NOT NULL,
    nama_sub_skpd character varying(200) NOT NULL,
    id_skpd integer NOT NULL
);


ALTER TABLE public.sub_skpd OWNER TO persediaan5;

--
-- Name: sub_skpd_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.sub_skpd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_skpd_id_seq OWNER TO persediaan5;

--
-- Name: sub_skpd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.sub_skpd_id_seq OWNED BY public.sub_skpd.id;


--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: persediaan5
--

CREATE TABLE public.transaksi (
    id integer NOT NULL,
    tanggal date NOT NULL,
    keterangan character varying(200) NOT NULL,
    id_jenis_transaksi integer,
    id_sub_skpd integer NOT NULL
);


ALTER TABLE public.transaksi OWNER TO persediaan5;

--
-- Name: transaksi_id_seq; Type: SEQUENCE; Schema: public; Owner: persediaan5
--

CREATE SEQUENCE public.transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaksi_id_seq OWNER TO persediaan5;

--
-- Name: transaksi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: persediaan5
--

ALTER SEQUENCE public.transaksi_id_seq OWNED BY public.transaksi.id;


--
-- Name: asal_usul id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.asal_usul ALTER COLUMN id SET DEFAULT nextval('public.asal_usul_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: barang id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.barang ALTER COLUMN id SET DEFAULT nextval('public.barang_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: jenis_barang id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_barang ALTER COLUMN id SET DEFAULT nextval('public.jenis_barang_id_seq'::regclass);


--
-- Name: jenis_keluar id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_keluar ALTER COLUMN id SET DEFAULT nextval('public.jenis_keluar_id_seq'::regclass);


--
-- Name: jenis_transaksi id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_transaksi ALTER COLUMN id SET DEFAULT nextval('public.jenis_transaksi_id_seq'::regclass);


--
-- Name: kabupaten id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.kabupaten ALTER COLUMN id SET DEFAULT nextval('public.kabupaten_id_seq'::regclass);


--
-- Name: lokasi_bidang id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.lokasi_bidang ALTER COLUMN id SET DEFAULT nextval('public.lokasi_bidang_id_seq'::regclass);


--
-- Name: pegawai id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pegawai ALTER COLUMN id SET DEFAULT nextval('public.pegawai_id_seq'::regclass);


--
-- Name: persediaan id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.persediaan ALTER COLUMN id SET DEFAULT nextval('public.persediaan_id_seq'::regclass);


--
-- Name: pihak_ketiga id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pihak_ketiga ALTER COLUMN id SET DEFAULT nextval('public.pihak_ketiga_id_seq'::regclass);


--
-- Name: provinsi id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.provinsi ALTER COLUMN id SET DEFAULT nextval('public.provinsi_id_seq'::regclass);


--
-- Name: satuan id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.satuan ALTER COLUMN id SET DEFAULT nextval('public.satuan_id_seq'::regclass);


--
-- Name: skpd id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.skpd ALTER COLUMN id SET DEFAULT nextval('public.skpd_id_seq'::regclass);


--
-- Name: status_pegawai id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.status_pegawai ALTER COLUMN id SET DEFAULT nextval('public.status_pegawai_id_seq'::regclass);


--
-- Name: sub_skpd id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.sub_skpd ALTER COLUMN id SET DEFAULT nextval('public.sub_skpd_id_seq'::regclass);


--
-- Name: transaksi id; Type: DEFAULT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.transaksi ALTER COLUMN id SET DEFAULT nextval('public.transaksi_id_seq'::regclass);


--
-- Data for Name: asal_usul; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.asal_usul (id, asal_usul) FROM stdin;
1	Belanja Barang/Jasa
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Kabupaten	7	add_kabupaten
20	Can change Kabupaten	7	change_kabupaten
21	Can delete Kabupaten	7	delete_kabupaten
22	Can add SUB SKPD	8	add_subskpd
23	Can change SUB SKPD	8	change_subskpd
24	Can delete SUB SKPD	8	delete_subskpd
25	Can add Pegawai	9	add_pegawai
26	Can change Pegawai	9	change_pegawai
27	Can delete Pegawai	9	delete_pegawai
28	Can add Jenis Transaksi	10	add_jenistransaksi
29	Can change Jenis Transaksi	10	change_jenistransaksi
30	Can delete Jenis Transaksi	10	delete_jenistransaksi
31	Can add Persediaan	11	add_persediaan
32	Can change Persediaan	11	change_persediaan
33	Can delete Persediaan	11	delete_persediaan
34	Can add Jenis Keluar	12	add_jeniskeluar
35	Can change Jenis Keluar	12	change_jeniskeluar
36	Can delete Jenis Keluar	12	delete_jeniskeluar
37	Can add SKPD	13	add_skpd
38	Can change SKPD	13	change_skpd
39	Can delete SKPD	13	delete_skpd
40	Can add Persediaan Keluar	11	add_persediaankeluar
41	Can change Persediaan Keluar	11	change_persediaankeluar
42	Can delete Persediaan Keluar	11	delete_persediaankeluar
43	Can add 01 : Pegawai Setwan	9	add_pegawaisetwan
44	Can change 01 : Pegawai Setwan	9	change_pegawaisetwan
45	Can delete 01 : Pegawai Setwan	9	delete_pegawaisetwan
46	Can add Jenis Barang	14	add_jenisbarang
47	Can change Jenis Barang	14	change_jenisbarang
48	Can delete Jenis Barang	14	delete_jenisbarang
49	Can add Barang	15	add_barang
50	Can change Barang	15	change_barang
51	Can delete Barang	15	delete_barang
52	Can add Lokasi Bidang	16	add_lokasibidang
53	Can change Lokasi Bidang	16	change_lokasibidang
54	Can delete Lokasi Bidang	16	delete_lokasibidang
55	Can add Status Pegawai	17	add_statuspegawai
56	Can change Status Pegawai	17	change_statuspegawai
57	Can delete Status Pegawai	17	delete_statuspegawai
58	Can add Masuk	18	add_masuk
59	Can change Masuk	18	change_masuk
60	Can delete Masuk	18	delete_masuk
61	Can add Keluar	19	add_keluar
62	Can change Keluar	19	change_keluar
63	Can delete Keluar	19	delete_keluar
64	Can add Provinsi	20	add_provinsi
65	Can change Provinsi	20	change_provinsi
66	Can delete Provinsi	20	delete_provinsi
67	Can add Transaksi	21	add_transaksi
68	Can change Transaksi	21	change_transaksi
69	Can delete Transaksi	21	delete_transaksi
70	Can add Pihak Ketiga	22	add_pihakketiga
71	Can change Pihak Ketiga	22	change_pihakketiga
72	Can delete Pihak Ketiga	22	delete_pihakketiga
73	Can add Tambah Barang	15	add_tambahbarang
74	Can change Tambah Barang	15	change_tambahbarang
75	Can delete Tambah Barang	15	delete_tambahbarang
76	Can add Satuan	23	add_satuan
77	Can change Satuan	23	change_satuan
78	Can delete Satuan	23	delete_satuan
79	Can add Asal Usul	24	add_asalusul
80	Can change Asal Usul	24	change_asalusul
81	Can delete Asal Usul	24	delete_asalusul
82	Can add 01 : Persediaan Masuk Setwan	11	add_persediaanmasuksetwan
83	Can change 01 : Persediaan Masuk Setwan	11	change_persediaanmasuksetwan
84	Can delete 01 : Persediaan Masuk Setwan	11	delete_persediaanmasuksetwan
85	Can add 01 : Transaksi Keluar Setwan	21	add_transaksikeluarsetwan
86	Can change 01 : Transaksi Keluar Setwan	21	change_transaksikeluarsetwan
87	Can delete 01 : Transaksi Keluar Setwan	21	delete_transaksikeluarsetwan
88	Can add Transaksi Keluar	21	add_transaksikeluar
89	Can change Transaksi Keluar	21	change_transaksikeluar
90	Can delete Transaksi Keluar	21	delete_transaksikeluar
91	Can add Persediaan Masuk	11	add_persediaanmasuk
92	Can change Persediaan Masuk	11	change_persediaanmasuk
93	Can delete Persediaan Masuk	11	delete_persediaanmasuk
94	Can add Transaksi Masuk	21	add_transaksimasuk
95	Can change Transaksi Masuk	21	change_transaksimasuk
96	Can delete Transaksi Masuk	21	delete_transaksimasuk
97	Can add 01 : Persediaan Keluar Setwan	11	add_persediaankeluarsetwan
98	Can change 01 : Persediaan Keluar Setwan	11	change_persediaankeluarsetwan
99	Can delete 01 : Persediaan Keluar Setwan	11	delete_persediaankeluarsetwan
100	Can add 01 : Transaksi Masuk Setwan	21	add_transaksimasuksetwan
101	Can change 01 : Transaksi Masuk Setwan	21	change_transaksimasuksetwan
102	Can delete 01 : Transaksi Masuk Setwan	21	delete_transaksimasuksetwan
103	Can add 01 : Pihak Ketiga Setwan	22	add_pihakketigasetwan
104	Can change 01 : Pihak Ketiga Setwan	22	change_pihakketigasetwan
105	Can delete 01 : Pihak Ketiga Setwan	22	delete_pihakketigasetwan
106	Can add 01 : Keluar Setwan	19	add_keluarsetwan
107	Can change 01 : Keluar Setwan	19	change_keluarsetwan
108	Can delete 01 : Keluar Setwan	19	delete_keluarsetwan
109	Can add 01 : Masuk Setwan	18	add_masuksetwan
110	Can change 01 : Masuk Setwan	18	change_masuksetwan
111	Can delete 01 : Masuk Setwan	18	delete_masuksetwan
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$omPZaSToBeNz$pVE7gzqpEVcchfQd0QKttbNEIpHI3BCmZzlSririy/c=	2018-10-20 15:40:17.414399+08	t	muntaza			muhammad@muntaza.id	t	t	2018-10-20 15:01:40.980463+08
2	pbkdf2_sha256$36000$3qnzAQI6vDWh$ABzIM7L0TqRMMB8O7jHLz1EXxDCgGFyhrAQgvtMEN4g=	2018-10-20 16:17:34.450905+08	t	admin				t	t	2018-10-20 15:59:58+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.barang (id, nama_barang, id_jenis_barang, id_satuan) FROM stdin;
1	Kertas F4 80 gram	1	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-10-20 15:59:58.921317+08	2	admin	1	[{"added": {}}]	4	1
2	2018-10-20 16:00:15.588504+08	2	admin	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	4	1
3	2018-10-20 16:20:02.051706+08	1	Kalimantan Selatan	1	[{"added": {}}]	20	2
4	2018-10-20 16:20:26.24955+08	1	Nama Kabupaten	1	[{"added": {}}]	7	2
5	2018-10-20 16:20:46.126053+08	1	Nama Provinsi	2	[{"changed": {"fields": ["nama_provinsi"]}}]	20	2
6	2018-10-20 16:21:10.732491+08	1	01  SETWAN	1	[{"added": {}}]	16	2
7	2018-10-20 16:21:38.008528+08	1	Sekretariat DPRD	1	[{"added": {}}, {"added": {"object": "Bagian Umum dan Perlengkapan", "name": "SUB SKPD"}}, {"added": {"object": "Bagian Humas", "name": "SUB SKPD"}}]	13	2
8	2018-10-20 16:21:54.010146+08	1	Alat Tulis Kantor	1	[{"added": {}}]	14	2
9	2018-10-20 16:22:06.181954+08	1	Pemakaian	1	[{"added": {}}]	12	2
10	2018-10-20 16:22:34.308775+08	1	rim	1	[{"added": {}}]	23	2
11	2018-10-20 16:22:43.883852+08	1	Kertas F4 80 gram : rim	1	[{"added": {}}]	33	2
12	2018-10-20 16:23:01.758735+08	1	Belanja Barang/Jasa	1	[{"added": {}}]	24	2
13	2018-10-20 16:23:26.149719+08	1	masuk	1	[{"added": {}}]	10	2
14	2018-10-20 16:23:45.910153+08	1	Toko Ahmad	1	[{"added": {}}]	22	2
15	2018-10-20 16:24:02.342531+08	1	1	1	[{"added": {}}, {"added": {"object": "1", "name": "01 : Masuk Setwan"}}, {"added": {"object": "1", "name": "01 : Persediaan Masuk Setwan"}}]	27	2
16	2018-10-20 16:24:07.289016+08	1	1	2	[]	27	2
17	2018-10-20 16:24:27.165376+08	2	keluar	1	[{"added": {}}]	10	2
18	2018-10-20 16:25:13.353398+08	1	Aktif	1	[{"added": {}}]	17	2
19	2018-10-20 16:25:16.37312+08	1	Hasan	1	[{"added": {}}]	9	2
20	2018-10-20 16:25:28.928909+08	2	2	1	[{"added": {}}, {"added": {"object": "2", "name": "01 : Keluar Setwan"}}, {"added": {"object": "2", "name": "01 : Persediaan Keluar Setwan"}}]	36	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	kabupaten	kabupaten
8	kabupaten	subskpd
9	kabupaten	pegawai
10	kabupaten	jenistransaksi
11	kabupaten	persediaan
12	kabupaten	jeniskeluar
13	kabupaten	skpd
14	kabupaten	jenisbarang
15	kabupaten	barang
16	kabupaten	lokasibidang
17	kabupaten	statuspegawai
18	kabupaten	masuk
19	kabupaten	keluar
20	kabupaten	provinsi
21	kabupaten	transaksi
22	kabupaten	pihakketiga
23	kabupaten	satuan
24	kabupaten	asalusul
25	kabupaten	masuksetwan
26	kabupaten	transaksimasuk
27	kabupaten	transaksimasuksetwan
28	kabupaten	persediaanmasuk
29	kabupaten	pihakketigasetwan
30	kabupaten	persediaanmasuksetwan
31	kabupaten	keluarsetwan
32	kabupaten	persediaankeluarsetwan
33	kabupaten	tambahbarang
34	kabupaten	transaksikeluar
35	kabupaten	persediaankeluar
36	kabupaten	transaksikeluarsetwan
37	kabupaten	pegawaisetwan
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-20 15:01:16.360644+08
2	auth	0001_initial	2018-10-20 15:01:16.735631+08
3	admin	0001_initial	2018-10-20 15:01:16.851362+08
4	admin	0002_logentry_remove_auto_add	2018-10-20 15:01:16.904792+08
5	contenttypes	0002_remove_content_type_name	2018-10-20 15:01:17.034787+08
6	auth	0002_alter_permission_name_max_length	2018-10-20 15:01:17.065786+08
7	auth	0003_alter_user_email_max_length	2018-10-20 15:01:17.114584+08
8	auth	0004_alter_user_username_opts	2018-10-20 15:01:17.162576+08
9	auth	0005_alter_user_last_login_null	2018-10-20 15:01:17.207927+08
10	auth	0006_require_contenttypes_0002	2018-10-20 15:01:17.21518+08
11	auth	0007_alter_validators_add_error_messages	2018-10-20 15:01:17.266951+08
12	auth	0008_alter_user_username_max_length	2018-10-20 15:01:17.327796+08
13	sessions	0001_initial	2018-10-20 15:01:17.401752+08
14	kabupaten	0001_initial	2018-10-20 16:11:25.992441+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
iwmv7bf59n2vvdf6nnyy3qjpnlc155c9	NWE3YTNiZjRhZTg2MmIwZjk1MmJmYTU1NzZiYzFmMzgzOWVkYTU4MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTlhOWQ0YTI5N2U5YWE3ZTE2YjUyMjk2ZDQyM2VjZDdlNTYyODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-11-03 16:15:54.774759+08
\.


--
-- Data for Name: jenis_barang; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.jenis_barang (id, kode_jenis_barang, jenis_barang) FROM stdin;
1	01	Alat Tulis Kantor
\.


--
-- Data for Name: jenis_keluar; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.jenis_keluar (id, jenis_keluar) FROM stdin;
1	Pemakaian
\.


--
-- Data for Name: jenis_transaksi; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.jenis_transaksi (id, jenis_transaksi) FROM stdin;
1	masuk
2	keluar
\.


--
-- Data for Name: kabupaten; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.kabupaten (id, kode_kabupaten, nama_kabupaten, id_provinsi) FROM stdin;
1	01	Nama Kabupaten	1
\.


--
-- Data for Name: keluar; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.keluar (id_transaksi, id_jenis_keluar, id_pegawai) FROM stdin;
2	1	1
\.


--
-- Data for Name: lokasi_bidang; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.lokasi_bidang (id, kode_lokasi_bidang, nama_lokasi_bidang, id_kabupaten) FROM stdin;
1	01	SETWAN	1
\.


--
-- Data for Name: masuk; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.masuk (id_transaksi, id_asal_usul, id_pihak_ketiga) FROM stdin;
1	1	1
\.


--
-- Data for Name: pegawai; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.pegawai (id, nama_pegawai, nip, id_skpd, id_status_pegawai) FROM stdin;
1	Hasan	20101025 201001 2015	1	1
\.


--
-- Data for Name: persediaan; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.persediaan (id, tanggal_kadaluarsa, jumlah, harga, id_barang, id_transaksi) FROM stdin;
1	\N	2	10000	1	1
2	\N	1	0	1	2
\.


--
-- Data for Name: pihak_ketiga; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.pihak_ketiga (id, nama_pihak_ketiga, id_skpd) FROM stdin;
1	Toko Ahmad	1
\.


--
-- Data for Name: provinsi; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.provinsi (id, kode_provinsi, nama_provinsi) FROM stdin;
1	01	Nama Provinsi
\.


--
-- Data for Name: satuan; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.satuan (id, satuan) FROM stdin;
1	rim
\.


--
-- Data for Name: skpd; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.skpd (id, kode_skpd, nama_skpd, id_lokasi_bidang) FROM stdin;
1	01	Sekretariat DPRD	1
\.


--
-- Data for Name: status_pegawai; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.status_pegawai (id, status_pegawai) FROM stdin;
1	Aktif
\.


--
-- Data for Name: sub_skpd; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.sub_skpd (id, kode_sub_skpd, nama_sub_skpd, id_skpd) FROM stdin;
1	01	Bagian Umum dan Perlengkapan	1
2	02	Bagian Humas	1
\.


--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: persediaan5
--

COPY public.transaksi (id, tanggal, keterangan, id_jenis_transaksi, id_sub_skpd) FROM stdin;
1	2018-10-20	-	1	1
2	2018-10-20	-	2	1
\.


--
-- Name: asal_usul_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.asal_usul_id_seq', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 111, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: barang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.barang_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 37, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 14, true);


--
-- Name: jenis_barang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.jenis_barang_id_seq', 1, true);


--
-- Name: jenis_keluar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.jenis_keluar_id_seq', 1, true);


--
-- Name: jenis_transaksi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.jenis_transaksi_id_seq', 2, true);


--
-- Name: kabupaten_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.kabupaten_id_seq', 1, true);


--
-- Name: lokasi_bidang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.lokasi_bidang_id_seq', 1, true);


--
-- Name: pegawai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.pegawai_id_seq', 1, true);


--
-- Name: persediaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.persediaan_id_seq', 2, true);


--
-- Name: pihak_ketiga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.pihak_ketiga_id_seq', 1, true);


--
-- Name: provinsi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.provinsi_id_seq', 1, true);


--
-- Name: satuan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.satuan_id_seq', 1, true);


--
-- Name: skpd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.skpd_id_seq', 1, true);


--
-- Name: status_pegawai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.status_pegawai_id_seq', 1, true);


--
-- Name: sub_skpd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.sub_skpd_id_seq', 2, true);


--
-- Name: transaksi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: persediaan5
--

SELECT pg_catalog.setval('public.transaksi_id_seq', 2, true);


--
-- Name: asal_usul asal_usul_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.asal_usul
    ADD CONSTRAINT asal_usul_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: barang barang_nama_barang_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_nama_barang_key UNIQUE (nama_barang);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jenis_barang jenis_barang_jenis_barang_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_barang
    ADD CONSTRAINT jenis_barang_jenis_barang_key UNIQUE (jenis_barang);


--
-- Name: jenis_barang jenis_barang_kode_jenis_barang_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_barang
    ADD CONSTRAINT jenis_barang_kode_jenis_barang_key UNIQUE (kode_jenis_barang);


--
-- Name: jenis_barang jenis_barang_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_barang
    ADD CONSTRAINT jenis_barang_pkey PRIMARY KEY (id);


--
-- Name: jenis_keluar jenis_keluar_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_keluar
    ADD CONSTRAINT jenis_keluar_pkey PRIMARY KEY (id);


--
-- Name: jenis_transaksi jenis_transaksi_jenis_transaksi_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_transaksi
    ADD CONSTRAINT jenis_transaksi_jenis_transaksi_key UNIQUE (jenis_transaksi);


--
-- Name: jenis_transaksi jenis_transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.jenis_transaksi
    ADD CONSTRAINT jenis_transaksi_pkey PRIMARY KEY (id);


--
-- Name: kabupaten kabupaten_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT kabupaten_pkey PRIMARY KEY (id);


--
-- Name: keluar keluar_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.keluar
    ADD CONSTRAINT keluar_pkey PRIMARY KEY (id_transaksi);


--
-- Name: lokasi_bidang lokasi_bidang_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.lokasi_bidang
    ADD CONSTRAINT lokasi_bidang_pkey PRIMARY KEY (id);


--
-- Name: masuk masuk_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.masuk
    ADD CONSTRAINT masuk_pkey PRIMARY KEY (id_transaksi);


--
-- Name: pegawai pegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (id);


--
-- Name: persediaan persediaan_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.persediaan
    ADD CONSTRAINT persediaan_pkey PRIMARY KEY (id);


--
-- Name: pihak_ketiga pihak_ketiga_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pihak_ketiga
    ADD CONSTRAINT pihak_ketiga_pkey PRIMARY KEY (id);


--
-- Name: provinsi provinsi_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id);


--
-- Name: satuan satuan_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.satuan
    ADD CONSTRAINT satuan_pkey PRIMARY KEY (id);


--
-- Name: satuan satuan_satuan_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.satuan
    ADD CONSTRAINT satuan_satuan_key UNIQUE (satuan);


--
-- Name: skpd skpd_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.skpd
    ADD CONSTRAINT skpd_pkey PRIMARY KEY (id);


--
-- Name: status_pegawai status_pegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.status_pegawai
    ADD CONSTRAINT status_pegawai_pkey PRIMARY KEY (id);


--
-- Name: status_pegawai status_pegawai_status_pegawai_key; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.status_pegawai
    ADD CONSTRAINT status_pegawai_status_pegawai_key UNIQUE (status_pegawai);


--
-- Name: sub_skpd sub_skpd_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.sub_skpd
    ADD CONSTRAINT sub_skpd_pkey PRIMARY KEY (id);


--
-- Name: transaksi transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: barang_id_jenis_barang_1a7d8097; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX barang_id_jenis_barang_1a7d8097 ON public.barang USING btree (id_jenis_barang);


--
-- Name: barang_id_satuan_7ceefd40; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX barang_id_satuan_7ceefd40 ON public.barang USING btree (id_satuan);


--
-- Name: barang_nama_barang_1fd0ff81_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX barang_nama_barang_1fd0ff81_like ON public.barang USING btree (nama_barang varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: jenis_barang_jenis_barang_4ab41059_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX jenis_barang_jenis_barang_4ab41059_like ON public.jenis_barang USING btree (jenis_barang varchar_pattern_ops);


--
-- Name: jenis_barang_kode_jenis_barang_e7367306_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX jenis_barang_kode_jenis_barang_e7367306_like ON public.jenis_barang USING btree (kode_jenis_barang varchar_pattern_ops);


--
-- Name: jenis_transaksi_jenis_transaksi_dc7f7e38_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX jenis_transaksi_jenis_transaksi_dc7f7e38_like ON public.jenis_transaksi USING btree (jenis_transaksi varchar_pattern_ops);


--
-- Name: kabupaten_id_provinsi_59094e06; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX kabupaten_id_provinsi_59094e06 ON public.kabupaten USING btree (id_provinsi);


--
-- Name: keluar_id_jenis_keluar_9699bb0f; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX keluar_id_jenis_keluar_9699bb0f ON public.keluar USING btree (id_jenis_keluar);


--
-- Name: keluar_id_pegawai_b5b8af05; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX keluar_id_pegawai_b5b8af05 ON public.keluar USING btree (id_pegawai);


--
-- Name: lokasi_bidang_id_kabupaten_06b39734; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX lokasi_bidang_id_kabupaten_06b39734 ON public.lokasi_bidang USING btree (id_kabupaten);


--
-- Name: masuk_id_asal_usul_7eeffb8c; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX masuk_id_asal_usul_7eeffb8c ON public.masuk USING btree (id_asal_usul);


--
-- Name: masuk_id_pihak_ketiga_6d62ae95; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX masuk_id_pihak_ketiga_6d62ae95 ON public.masuk USING btree (id_pihak_ketiga);


--
-- Name: pegawai_id_skpd_2c74398c; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX pegawai_id_skpd_2c74398c ON public.pegawai USING btree (id_skpd);


--
-- Name: pegawai_id_status_pegawai_8adf5463; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX pegawai_id_status_pegawai_8adf5463 ON public.pegawai USING btree (id_status_pegawai);


--
-- Name: persediaan_id_barang_83d4e00f; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX persediaan_id_barang_83d4e00f ON public.persediaan USING btree (id_barang);


--
-- Name: persediaan_id_transaksi_613752ab; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX persediaan_id_transaksi_613752ab ON public.persediaan USING btree (id_transaksi);


--
-- Name: pihak_ketiga_id_skpd_4e9c1583; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX pihak_ketiga_id_skpd_4e9c1583 ON public.pihak_ketiga USING btree (id_skpd);


--
-- Name: satuan_satuan_693670ab_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX satuan_satuan_693670ab_like ON public.satuan USING btree (satuan varchar_pattern_ops);


--
-- Name: skpd_id_lokasi_bidang_f7453f19; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX skpd_id_lokasi_bidang_f7453f19 ON public.skpd USING btree (id_lokasi_bidang);


--
-- Name: status_pegawai_status_pegawai_1a2384c2_like; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX status_pegawai_status_pegawai_1a2384c2_like ON public.status_pegawai USING btree (status_pegawai varchar_pattern_ops);


--
-- Name: sub_skpd_id_skpd_87a43001; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX sub_skpd_id_skpd_87a43001 ON public.sub_skpd USING btree (id_skpd);


--
-- Name: transaksi_id_jenis_transaksi_6a01c358; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX transaksi_id_jenis_transaksi_6a01c358 ON public.transaksi USING btree (id_jenis_transaksi);


--
-- Name: transaksi_id_sub_skpd_7525b22a; Type: INDEX; Schema: public; Owner: persediaan5
--

CREATE INDEX transaksi_id_sub_skpd_7525b22a ON public.transaksi USING btree (id_sub_skpd);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: barang barang_id_jenis_barang_1a7d8097_fk_jenis_barang_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_id_jenis_barang_1a7d8097_fk_jenis_barang_id FOREIGN KEY (id_jenis_barang) REFERENCES public.jenis_barang(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: barang barang_id_satuan_7ceefd40_fk_satuan_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_id_satuan_7ceefd40_fk_satuan_id FOREIGN KEY (id_satuan) REFERENCES public.satuan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: kabupaten kabupaten_id_provinsi_59094e06_fk_provinsi_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT kabupaten_id_provinsi_59094e06_fk_provinsi_id FOREIGN KEY (id_provinsi) REFERENCES public.provinsi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: keluar keluar_id_jenis_keluar_9699bb0f_fk_jenis_keluar_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.keluar
    ADD CONSTRAINT keluar_id_jenis_keluar_9699bb0f_fk_jenis_keluar_id FOREIGN KEY (id_jenis_keluar) REFERENCES public.jenis_keluar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: keluar keluar_id_pegawai_b5b8af05_fk_pegawai_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.keluar
    ADD CONSTRAINT keluar_id_pegawai_b5b8af05_fk_pegawai_id FOREIGN KEY (id_pegawai) REFERENCES public.pegawai(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: keluar keluar_id_transaksi_27e02e31_fk_transaksi_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.keluar
    ADD CONSTRAINT keluar_id_transaksi_27e02e31_fk_transaksi_id FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lokasi_bidang lokasi_bidang_id_kabupaten_06b39734_fk_kabupaten_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.lokasi_bidang
    ADD CONSTRAINT lokasi_bidang_id_kabupaten_06b39734_fk_kabupaten_id FOREIGN KEY (id_kabupaten) REFERENCES public.kabupaten(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: masuk masuk_id_asal_usul_7eeffb8c_fk_asal_usul_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.masuk
    ADD CONSTRAINT masuk_id_asal_usul_7eeffb8c_fk_asal_usul_id FOREIGN KEY (id_asal_usul) REFERENCES public.asal_usul(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: masuk masuk_id_pihak_ketiga_6d62ae95_fk_pihak_ketiga_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.masuk
    ADD CONSTRAINT masuk_id_pihak_ketiga_6d62ae95_fk_pihak_ketiga_id FOREIGN KEY (id_pihak_ketiga) REFERENCES public.pihak_ketiga(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: masuk masuk_id_transaksi_e1602268_fk_transaksi_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.masuk
    ADD CONSTRAINT masuk_id_transaksi_e1602268_fk_transaksi_id FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pegawai pegawai_id_skpd_2c74398c_fk_skpd_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_id_skpd_2c74398c_fk_skpd_id FOREIGN KEY (id_skpd) REFERENCES public.skpd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pegawai pegawai_id_status_pegawai_8adf5463_fk_status_pegawai_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_id_status_pegawai_8adf5463_fk_status_pegawai_id FOREIGN KEY (id_status_pegawai) REFERENCES public.status_pegawai(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persediaan persediaan_id_barang_83d4e00f_fk_barang_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.persediaan
    ADD CONSTRAINT persediaan_id_barang_83d4e00f_fk_barang_id FOREIGN KEY (id_barang) REFERENCES public.barang(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persediaan persediaan_id_transaksi_613752ab_fk_transaksi_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.persediaan
    ADD CONSTRAINT persediaan_id_transaksi_613752ab_fk_transaksi_id FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pihak_ketiga pihak_ketiga_id_skpd_4e9c1583_fk_skpd_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.pihak_ketiga
    ADD CONSTRAINT pihak_ketiga_id_skpd_4e9c1583_fk_skpd_id FOREIGN KEY (id_skpd) REFERENCES public.skpd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: skpd skpd_id_lokasi_bidang_f7453f19_fk_lokasi_bidang_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.skpd
    ADD CONSTRAINT skpd_id_lokasi_bidang_f7453f19_fk_lokasi_bidang_id FOREIGN KEY (id_lokasi_bidang) REFERENCES public.lokasi_bidang(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sub_skpd sub_skpd_id_skpd_87a43001_fk_skpd_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.sub_skpd
    ADD CONSTRAINT sub_skpd_id_skpd_87a43001_fk_skpd_id FOREIGN KEY (id_skpd) REFERENCES public.skpd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: transaksi transaksi_id_jenis_transaksi_6a01c358_fk_jenis_transaksi_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_id_jenis_transaksi_6a01c358_fk_jenis_transaksi_id FOREIGN KEY (id_jenis_transaksi) REFERENCES public.jenis_transaksi(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: transaksi transaksi_id_sub_skpd_7525b22a_fk_sub_skpd_id; Type: FK CONSTRAINT; Schema: public; Owner: persediaan5
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_id_sub_skpd_7525b22a_fk_sub_skpd_id FOREIGN KEY (id_sub_skpd) REFERENCES public.sub_skpd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

