DROP VIEW IF EXISTS view_persediaan_barang2_awayan;

CREATE VIEW view_persediaan_barang2_awayan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang2_bappeda;

CREATE VIEW view_persediaan_barang2_bappeda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang2_batumandi;

CREATE VIEW view_persediaan_barang2_batumandi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang2_bkd;

CREATE VIEW view_persediaan_barang2_bkd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bkd

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang2_bkppd;

CREATE VIEW view_persediaan_barang2_bkppd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bkppd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_persediaan_barang2_bpbd;

CREATE VIEW view_persediaan_barang2_bpbd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang2_bppd;

CREATE VIEW view_persediaan_barang2_bppd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bppd

WHERE
1 = 1  AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_persediaan_barang2_dinkes;

CREATE VIEW view_persediaan_barang2_dinkes AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang2_disdik;

CREATE VIEW view_persediaan_barang2_disdik AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang2_dishub;

CREATE VIEW view_persediaan_barang2_dishub AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang2_disnakertrans;

CREATE VIEW view_persediaan_barang2_disnakertrans AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_persediaan_barang2_dko;

CREATE VIEW view_persediaan_barang2_dko AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dko

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dko FROM lap_dko;
DROP VIEW IF EXISTS view_persediaan_barang2_dkp;

CREATE VIEW view_persediaan_barang2_dkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_persediaan_barang2_dkukmp;

CREATE VIEW view_persediaan_barang2_dkukmp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dkukmp

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_persediaan_barang2_dlh;

CREATE VIEW view_persediaan_barang2_dlh AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dlh

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_persediaan_barang2_dpkp;

CREATE VIEW view_persediaan_barang2_dpkp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpkp

WHERE
1 = 1  AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_persediaan_barang2_dpmd;

CREATE VIEW view_persediaan_barang2_dpmd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpmd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_persediaan_barang2_dpmptsp;

CREATE VIEW view_persediaan_barang2_dpmptsp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_persediaan_barang2_dppkb;

CREATE VIEW view_persediaan_barang2_dppkb AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dppkb

WHERE
1 = 1  AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_persediaan_barang2_dpppa;

CREATE VIEW view_persediaan_barang2_dpppa AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpppa

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_persediaan_barang2_dpupr;

CREATE VIEW view_persediaan_barang2_dpupr AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dpupr

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_persediaan_barang2_dukcatpil;

CREATE VIEW view_persediaan_barang2_dukcatpil AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang2_halong;

CREATE VIEW view_persediaan_barang2_halong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang2_inspektorat;

CREATE VIEW view_persediaan_barang2_inspektorat AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang2_juai;

CREATE VIEW view_persediaan_barang2_juai AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang2_kearsipan;

CREATE VIEW view_persediaan_barang2_kearsipan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kearsipan

WHERE
1 = 1  AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_persediaan_barang2_kesbangpol;

CREATE VIEW view_persediaan_barang2_kesbangpol AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang2_kominfo;

CREATE VIEW view_persediaan_barang2_kominfo AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kominfo

WHERE
1 = 1  AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_persediaan_barang2_lampihong;

CREATE VIEW view_persediaan_barang2_lampihong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang2_paringin;

CREATE VIEW view_persediaan_barang2_paringin AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang2_paringinselatan;

CREATE VIEW view_persediaan_barang2_paringinselatan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang2_pariwisata;

CREATE VIEW view_persediaan_barang2_pariwisata AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_pariwisata

WHERE
1 = 1  AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_persediaan_barang2_perdagangan;

CREATE VIEW view_persediaan_barang2_perdagangan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perdagangan

WHERE
1 = 1  AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_persediaan_barang2_perikanan;

CREATE VIEW view_persediaan_barang2_perikanan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perikanan

WHERE
1 = 1  AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_persediaan_barang2_perpustakaan;

CREATE VIEW view_persediaan_barang2_perpustakaan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_persediaan_barang2_pertanian;

CREATE VIEW view_persediaan_barang2_pertanian AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang2_satpolpp;

CREATE VIEW view_persediaan_barang2_satpolpp AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang2_setda;

CREATE VIEW view_persediaan_barang2_setda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang2_setwan;

CREATE VIEW view_persediaan_barang2_setwan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang2_sosial;

CREATE VIEW view_persediaan_barang2_sosial AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_sosial

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_persediaan_barang2_tebingtinggi;

CREATE VIEW view_persediaan_barang2_tebingtinggi AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_tebingtinggi FROM lap_tebingtinggi;
