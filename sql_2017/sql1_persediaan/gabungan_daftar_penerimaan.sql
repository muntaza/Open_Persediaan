DROP VIEW IF EXISTS view_daftar_penerimaan_awayan;

CREATE VIEW view_daftar_penerimaan_awayan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_awayan, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_awayan, sub_skpd FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_awayan;
DROP VIEW IF EXISTS view_daftar_penerimaan_bappeda;

CREATE VIEW view_daftar_penerimaan_bappeda AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bappeda, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bappeda, sub_skpd FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_bappeda;
DROP VIEW IF EXISTS view_daftar_penerimaan_batumandi;

CREATE VIEW view_daftar_penerimaan_batumandi AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_batumandi, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_batumandi, sub_skpd FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_batumandi;
DROP VIEW IF EXISTS view_daftar_penerimaan_bkd;

CREATE VIEW view_daftar_penerimaan_bkd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bkd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bkd, sub_skpd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_bkd;
DROP VIEW IF EXISTS view_daftar_penerimaan_bkppd;

CREATE VIEW view_daftar_penerimaan_bkppd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bkppd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bkppd, sub_skpd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_bkppd;
DROP VIEW IF EXISTS view_daftar_penerimaan_bpbd;

CREATE VIEW view_daftar_penerimaan_bpbd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bpbd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bpbd, sub_skpd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_bpbd;
DROP VIEW IF EXISTS view_daftar_penerimaan_bppd;

CREATE VIEW view_daftar_penerimaan_bppd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bppd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bppd, sub_skpd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_bppd;
DROP VIEW IF EXISTS view_daftar_penerimaan_dinkes;

CREATE VIEW view_daftar_penerimaan_dinkes AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dinkes, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dinkes, sub_skpd FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dinkes;
DROP VIEW IF EXISTS view_daftar_penerimaan_disdik;

CREATE VIEW view_daftar_penerimaan_disdik AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_disdik, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_disdik, sub_skpd FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_disdik;
DROP VIEW IF EXISTS view_daftar_penerimaan_dishub;

CREATE VIEW view_daftar_penerimaan_dishub AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dishub, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dishub, sub_skpd FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dishub;
DROP VIEW IF EXISTS view_daftar_penerimaan_disnakertrans;

CREATE VIEW view_daftar_penerimaan_disnakertrans AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_disnakertrans, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_disnakertrans, sub_skpd FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_daftar_penerimaan_dko;

CREATE VIEW view_daftar_penerimaan_dko AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dko, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dko, sub_skpd FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dko;
DROP VIEW IF EXISTS view_daftar_penerimaan_dkp;

CREATE VIEW view_daftar_penerimaan_dkp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dkp, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dkp, sub_skpd FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dkp;
DROP VIEW IF EXISTS view_daftar_penerimaan_dkukmp;

CREATE VIEW view_daftar_penerimaan_dkukmp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dkukmp, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dkukmp, sub_skpd FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dkukmp;
DROP VIEW IF EXISTS view_daftar_penerimaan_dlh;

CREATE VIEW view_daftar_penerimaan_dlh AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dlh, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dlh, sub_skpd FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dlh;
DROP VIEW IF EXISTS view_daftar_penerimaan_dpkp;

CREATE VIEW view_daftar_penerimaan_dpkp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dpkp, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dpkp, sub_skpd FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dpkp;
DROP VIEW IF EXISTS view_daftar_penerimaan_dpmd;

CREATE VIEW view_daftar_penerimaan_dpmd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dpmd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dpmd, sub_skpd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dpmd;
DROP VIEW IF EXISTS view_daftar_penerimaan_dpmptsp;

CREATE VIEW view_daftar_penerimaan_dpmptsp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dpmptsp, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dpmptsp, sub_skpd FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_daftar_penerimaan_dppkb;

CREATE VIEW view_daftar_penerimaan_dppkb AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dppkb, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dppkb, sub_skpd FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dppkb;
DROP VIEW IF EXISTS view_daftar_penerimaan_dpppa;

CREATE VIEW view_daftar_penerimaan_dpppa AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dpppa, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dpppa, sub_skpd FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dpppa;
DROP VIEW IF EXISTS view_daftar_penerimaan_dpupr;

CREATE VIEW view_daftar_penerimaan_dpupr AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dpupr, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dpupr, sub_skpd FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dpupr;
DROP VIEW IF EXISTS view_daftar_penerimaan_dukcatpil;

CREATE VIEW view_daftar_penerimaan_dukcatpil AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dukcatpil, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dukcatpil, sub_skpd FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_daftar_penerimaan_halong;

CREATE VIEW view_daftar_penerimaan_halong AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_halong, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_halong, sub_skpd FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_halong;
DROP VIEW IF EXISTS view_daftar_penerimaan_inspektorat;

CREATE VIEW view_daftar_penerimaan_inspektorat AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_inspektorat, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_inspektorat, sub_skpd FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_inspektorat;
DROP VIEW IF EXISTS view_daftar_penerimaan_juai;

CREATE VIEW view_daftar_penerimaan_juai AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_juai, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_juai, sub_skpd FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_juai;
DROP VIEW IF EXISTS view_daftar_penerimaan_kearsipan;

CREATE VIEW view_daftar_penerimaan_kearsipan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kearsipan, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kearsipan, sub_skpd FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_kearsipan;
DROP VIEW IF EXISTS view_daftar_penerimaan_kesbangpol;

CREATE VIEW view_daftar_penerimaan_kesbangpol AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kesbangpol, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kesbangpol, sub_skpd FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_daftar_penerimaan_kominfo;

CREATE VIEW view_daftar_penerimaan_kominfo AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kominfo, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kominfo, sub_skpd FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_kominfo;
DROP VIEW IF EXISTS view_daftar_penerimaan_lampihong;

CREATE VIEW view_daftar_penerimaan_lampihong AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_lampihong, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_lampihong, sub_skpd FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_lampihong;
DROP VIEW IF EXISTS view_daftar_penerimaan_paringin;

CREATE VIEW view_daftar_penerimaan_paringin AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_paringin, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_paringin, sub_skpd FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_paringin;
DROP VIEW IF EXISTS view_daftar_penerimaan_paringinselatan;

CREATE VIEW view_daftar_penerimaan_paringinselatan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_paringinselatan, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_paringinselatan, sub_skpd FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_daftar_penerimaan_pariwisata;

CREATE VIEW view_daftar_penerimaan_pariwisata AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_pariwisata, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_pariwisata, sub_skpd FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_pariwisata;
DROP VIEW IF EXISTS view_daftar_penerimaan_perdagangan;

CREATE VIEW view_daftar_penerimaan_perdagangan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_perdagangan, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_perdagangan, sub_skpd FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_perdagangan;
DROP VIEW IF EXISTS view_daftar_penerimaan_perikanan;

CREATE VIEW view_daftar_penerimaan_perikanan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_perikanan, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_perikanan, sub_skpd FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_perikanan;
DROP VIEW IF EXISTS view_daftar_penerimaan_perpustakaan;

CREATE VIEW view_daftar_penerimaan_perpustakaan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_perpustakaan, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_perpustakaan, sub_skpd FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_daftar_penerimaan_pertanian;

CREATE VIEW view_daftar_penerimaan_pertanian AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_pertanian, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_pertanian, sub_skpd FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_pertanian;
DROP VIEW IF EXISTS view_daftar_penerimaan_satpolpp;

CREATE VIEW view_daftar_penerimaan_satpolpp AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_satpolpp, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_satpolpp, sub_skpd FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_satpolpp;
DROP VIEW IF EXISTS view_daftar_penerimaan_setda;

CREATE VIEW view_daftar_penerimaan_setda AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_setda, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_setda, sub_skpd FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_setda;
DROP VIEW IF EXISTS view_daftar_penerimaan_setwan;

CREATE VIEW view_daftar_penerimaan_setwan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_setwan, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_setwan, sub_skpd FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_setwan;
DROP VIEW IF EXISTS view_daftar_penerimaan_sosial;

CREATE VIEW view_daftar_penerimaan_sosial AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_sosial, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_sosial, sub_skpd FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_sosial;
DROP VIEW IF EXISTS view_daftar_penerimaan_tebingtinggi;

CREATE VIEW view_daftar_penerimaan_tebingtinggi AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_tebingtinggi, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_tebingtinggi, sub_skpd FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_tebingtinggi;
