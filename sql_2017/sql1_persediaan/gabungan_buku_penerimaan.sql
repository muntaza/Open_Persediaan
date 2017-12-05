DROP VIEW IF EXISTS view_buku_penerimaan_awayan;

CREATE VIEW view_buku_penerimaan_awayan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_buku_penerimaan_bappeda;

CREATE VIEW view_buku_penerimaan_bappeda AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_buku_penerimaan_batumandi;

CREATE VIEW view_buku_penerimaan_batumandi AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_buku_penerimaan_bkd;

CREATE VIEW view_buku_penerimaan_bkd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_buku_penerimaan_bkppd;

CREATE VIEW view_buku_penerimaan_bkppd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_buku_penerimaan_bpbd;

CREATE VIEW view_buku_penerimaan_bpbd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_buku_penerimaan_bppd;

CREATE VIEW view_buku_penerimaan_bppd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_buku_penerimaan_dinkes;

CREATE VIEW view_buku_penerimaan_dinkes AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_buku_penerimaan_disdik;

CREATE VIEW view_buku_penerimaan_disdik AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_buku_penerimaan_dishub;

CREATE VIEW view_buku_penerimaan_dishub AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_buku_penerimaan_disnakertrans;

CREATE VIEW view_buku_penerimaan_disnakertrans AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_buku_penerimaan_dko;

CREATE VIEW view_buku_penerimaan_dko AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dko FROM lap_dko;
DROP VIEW IF EXISTS view_buku_penerimaan_dkp;

CREATE VIEW view_buku_penerimaan_dkp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_buku_penerimaan_dkukmp;

CREATE VIEW view_buku_penerimaan_dkukmp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_buku_penerimaan_dlh;

CREATE VIEW view_buku_penerimaan_dlh AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_buku_penerimaan_dpkp;

CREATE VIEW view_buku_penerimaan_dpkp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_buku_penerimaan_dpmd;

CREATE VIEW view_buku_penerimaan_dpmd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_buku_penerimaan_dpmptsp;

CREATE VIEW view_buku_penerimaan_dpmptsp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_buku_penerimaan_dppkb;

CREATE VIEW view_buku_penerimaan_dppkb AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_buku_penerimaan_dpppa;

CREATE VIEW view_buku_penerimaan_dpppa AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_buku_penerimaan_dpupr;

CREATE VIEW view_buku_penerimaan_dpupr AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_buku_penerimaan_dukcatpil;

CREATE VIEW view_buku_penerimaan_dukcatpil AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_buku_penerimaan_halong;

CREATE VIEW view_buku_penerimaan_halong AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_halong FROM lap_halong;
DROP VIEW IF EXISTS view_buku_penerimaan_inspektorat;

CREATE VIEW view_buku_penerimaan_inspektorat AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_buku_penerimaan_juai;

CREATE VIEW view_buku_penerimaan_juai AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_juai FROM lap_juai;
DROP VIEW IF EXISTS view_buku_penerimaan_kearsipan;

CREATE VIEW view_buku_penerimaan_kearsipan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_buku_penerimaan_kesbangpol;

CREATE VIEW view_buku_penerimaan_kesbangpol AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_buku_penerimaan_kominfo;

CREATE VIEW view_buku_penerimaan_kominfo AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_buku_penerimaan_lampihong;

CREATE VIEW view_buku_penerimaan_lampihong AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_buku_penerimaan_paringin;

CREATE VIEW view_buku_penerimaan_paringin AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_buku_penerimaan_paringinselatan;

CREATE VIEW view_buku_penerimaan_paringinselatan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_buku_penerimaan_pariwisata;

CREATE VIEW view_buku_penerimaan_pariwisata AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_buku_penerimaan_perdagangan;

CREATE VIEW view_buku_penerimaan_perdagangan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_buku_penerimaan_perikanan;

CREATE VIEW view_buku_penerimaan_perikanan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_buku_penerimaan_perpustakaan;

CREATE VIEW view_buku_penerimaan_perpustakaan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_buku_penerimaan_pertanian;

CREATE VIEW view_buku_penerimaan_pertanian AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_buku_penerimaan_satpolpp;

CREATE VIEW view_buku_penerimaan_satpolpp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_buku_penerimaan_setda;

CREATE VIEW view_buku_penerimaan_setda AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_setda FROM lap_setda;
DROP VIEW IF EXISTS view_buku_penerimaan_setwan;

CREATE VIEW view_buku_penerimaan_setwan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_buku_penerimaan_sosial;

CREATE VIEW view_buku_penerimaan_sosial AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_buku_penerimaan_tebingtinggi;

CREATE VIEW view_buku_penerimaan_tebingtinggi AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_tebingtinggi FROM lap_tebingtinggi;
