DROP VIEW IF EXISTS view_beban_barang4_awayan;

CREATE VIEW view_beban_barang4_awayan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_awayan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_beban_barang4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_beban_barang4_bappeda;

CREATE VIEW view_beban_barang4_bappeda AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bappeda

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_beban_barang4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_beban_barang4_batumandi;

CREATE VIEW view_beban_barang4_batumandi AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_batumandi

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_beban_barang4_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_beban_barang4_bkd;

CREATE VIEW view_beban_barang4_bkd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bkd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_beban_barang4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_beban_barang4_bkppd;

CREATE VIEW view_beban_barang4_bkppd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bkppd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_beban_barang4_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_beban_barang4_bpbd;

CREATE VIEW view_beban_barang4_bpbd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bpbd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_beban_barang4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_beban_barang4_bppd;

CREATE VIEW view_beban_barang4_bppd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bppd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_beban_barang4_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_beban_barang4_dinkes;

CREATE VIEW view_beban_barang4_dinkes AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dinkes

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_beban_barang4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_beban_barang4_disdik;

CREATE VIEW view_beban_barang4_disdik AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_disdik

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_beban_barang4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_beban_barang4_dishub;

CREATE VIEW view_beban_barang4_dishub AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dishub

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_beban_barang4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_beban_barang4_disnakertrans;

CREATE VIEW view_beban_barang4_disnakertrans AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_disnakertrans

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_beban_barang4_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_beban_barang4_dko;

CREATE VIEW view_beban_barang4_dko AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dko

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_beban_barang4_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dko FROM lap_dko;
DROP VIEW IF EXISTS view_beban_barang4_dkp;

CREATE VIEW view_beban_barang4_dkp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dkp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_beban_barang4_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_beban_barang4_dkukmp;

CREATE VIEW view_beban_barang4_dkukmp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dkukmp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_beban_barang4_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_beban_barang4_dlh;

CREATE VIEW view_beban_barang4_dlh AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dlh

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_beban_barang4_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_beban_barang4_dpkp;

CREATE VIEW view_beban_barang4_dpkp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dpkp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_beban_barang4_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_beban_barang4_dpmd;

CREATE VIEW view_beban_barang4_dpmd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dpmd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_beban_barang4_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_beban_barang4_dpmptsp;

CREATE VIEW view_beban_barang4_dpmptsp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dpmptsp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_beban_barang4_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_beban_barang4_dppkb;

CREATE VIEW view_beban_barang4_dppkb AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dppkb

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_beban_barang4_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_beban_barang4_dpppa;

CREATE VIEW view_beban_barang4_dpppa AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dpppa

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_beban_barang4_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_beban_barang4_dpupr;

CREATE VIEW view_beban_barang4_dpupr AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dpupr

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_beban_barang4_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_beban_barang4_dukcatpil;

CREATE VIEW view_beban_barang4_dukcatpil AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dukcatpil

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_beban_barang4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_beban_barang4_halong;

CREATE VIEW view_beban_barang4_halong AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_halong

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_beban_barang4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_halong FROM lap_halong;
DROP VIEW IF EXISTS view_beban_barang4_inspektorat;

CREATE VIEW view_beban_barang4_inspektorat AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_inspektorat

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_beban_barang4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_beban_barang4_juai;

CREATE VIEW view_beban_barang4_juai AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_juai

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_beban_barang4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_juai FROM lap_juai;
DROP VIEW IF EXISTS view_beban_barang4_kearsipan;

CREATE VIEW view_beban_barang4_kearsipan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kearsipan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_beban_barang4_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_beban_barang4_kesbangpol;

CREATE VIEW view_beban_barang4_kesbangpol AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kesbangpol

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_beban_barang4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_beban_barang4_kominfo;

CREATE VIEW view_beban_barang4_kominfo AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kominfo

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_beban_barang4_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_beban_barang4_lampihong;

CREATE VIEW view_beban_barang4_lampihong AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_lampihong

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_beban_barang4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_beban_barang4_paringin;

CREATE VIEW view_beban_barang4_paringin AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringin

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_beban_barang4_paringinselatan;

CREATE VIEW view_beban_barang4_paringinselatan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringinselatan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_beban_barang4_pariwisata;

CREATE VIEW view_beban_barang4_pariwisata AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_pariwisata

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_beban_barang4_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_beban_barang4_perdagangan;

CREATE VIEW view_beban_barang4_perdagangan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_perdagangan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_beban_barang4_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_beban_barang4_perikanan;

CREATE VIEW view_beban_barang4_perikanan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_perikanan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_beban_barang4_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_beban_barang4_perpustakaan;

CREATE VIEW view_beban_barang4_perpustakaan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_perpustakaan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_beban_barang4_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_beban_barang4_pertanian;

CREATE VIEW view_beban_barang4_pertanian AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_pertanian

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_beban_barang4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_beban_barang4_satpolpp;

CREATE VIEW view_beban_barang4_satpolpp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_satpolpp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_beban_barang4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_beban_barang4_setda;

CREATE VIEW view_beban_barang4_setda AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_setda

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_beban_barang4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_setda FROM lap_setda;
DROP VIEW IF EXISTS view_beban_barang4_setwan;

CREATE VIEW view_beban_barang4_setwan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_setwan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_beban_barang4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_beban_barang4_sosial;

CREATE VIEW view_beban_barang4_sosial AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_sosial

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_beban_barang4_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_beban_barang4_tebingtinggi;

CREATE VIEW view_beban_barang4_tebingtinggi AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_tebingtinggi

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_beban_barang4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_tebingtinggi FROM lap_tebingtinggi;
