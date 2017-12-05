DROP VIEW IF EXISTS view_daftar_pengadaan_awayan;

CREATE VIEW view_daftar_pengadaan_awayan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_awayan;
DROP VIEW IF EXISTS view_daftar_pengadaan_bappeda;

CREATE VIEW view_daftar_pengadaan_bappeda AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bappeda;
DROP VIEW IF EXISTS view_daftar_pengadaan_batumandi;

CREATE VIEW view_daftar_pengadaan_batumandi AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_batumandi;
DROP VIEW IF EXISTS view_daftar_pengadaan_bkd;

CREATE VIEW view_daftar_pengadaan_bkd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bkd;
DROP VIEW IF EXISTS view_daftar_pengadaan_bkppd;

CREATE VIEW view_daftar_pengadaan_bkppd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bkppd;
DROP VIEW IF EXISTS view_daftar_pengadaan_bpbd;

CREATE VIEW view_daftar_pengadaan_bpbd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bpbd;
DROP VIEW IF EXISTS view_daftar_pengadaan_bppd;

CREATE VIEW view_daftar_pengadaan_bppd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bppd;
DROP VIEW IF EXISTS view_daftar_pengadaan_dinkes;

CREATE VIEW view_daftar_pengadaan_dinkes AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dinkes;
DROP VIEW IF EXISTS view_daftar_pengadaan_disdik;

CREATE VIEW view_daftar_pengadaan_disdik AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_disdik;
DROP VIEW IF EXISTS view_daftar_pengadaan_dishub;

CREATE VIEW view_daftar_pengadaan_dishub AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dishub;
DROP VIEW IF EXISTS view_daftar_pengadaan_disnakertrans;

CREATE VIEW view_daftar_pengadaan_disnakertrans AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_daftar_pengadaan_dko;

CREATE VIEW view_daftar_pengadaan_dko AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dko;
DROP VIEW IF EXISTS view_daftar_pengadaan_dkp;

CREATE VIEW view_daftar_pengadaan_dkp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dkp;
DROP VIEW IF EXISTS view_daftar_pengadaan_dkukmp;

CREATE VIEW view_daftar_pengadaan_dkukmp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dkukmp;
DROP VIEW IF EXISTS view_daftar_pengadaan_dlh;

CREATE VIEW view_daftar_pengadaan_dlh AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dlh;
DROP VIEW IF EXISTS view_daftar_pengadaan_dpkp;

CREATE VIEW view_daftar_pengadaan_dpkp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dpkp;
DROP VIEW IF EXISTS view_daftar_pengadaan_dpmd;

CREATE VIEW view_daftar_pengadaan_dpmd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dpmd;
DROP VIEW IF EXISTS view_daftar_pengadaan_dpmptsp;

CREATE VIEW view_daftar_pengadaan_dpmptsp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_daftar_pengadaan_dppkb;

CREATE VIEW view_daftar_pengadaan_dppkb AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dppkb;
DROP VIEW IF EXISTS view_daftar_pengadaan_dpppa;

CREATE VIEW view_daftar_pengadaan_dpppa AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dpppa;
DROP VIEW IF EXISTS view_daftar_pengadaan_dpupr;

CREATE VIEW view_daftar_pengadaan_dpupr AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dpupr;
DROP VIEW IF EXISTS view_daftar_pengadaan_dukcatpil;

CREATE VIEW view_daftar_pengadaan_dukcatpil AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_daftar_pengadaan_halong;

CREATE VIEW view_daftar_pengadaan_halong AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_halong;
DROP VIEW IF EXISTS view_daftar_pengadaan_inspektorat;

CREATE VIEW view_daftar_pengadaan_inspektorat AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_inspektorat;
DROP VIEW IF EXISTS view_daftar_pengadaan_juai;

CREATE VIEW view_daftar_pengadaan_juai AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_juai;
DROP VIEW IF EXISTS view_daftar_pengadaan_kearsipan;

CREATE VIEW view_daftar_pengadaan_kearsipan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kearsipan;
DROP VIEW IF EXISTS view_daftar_pengadaan_kesbangpol;

CREATE VIEW view_daftar_pengadaan_kesbangpol AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_daftar_pengadaan_kominfo;

CREATE VIEW view_daftar_pengadaan_kominfo AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kominfo;
DROP VIEW IF EXISTS view_daftar_pengadaan_lampihong;

CREATE VIEW view_daftar_pengadaan_lampihong AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_lampihong;
DROP VIEW IF EXISTS view_daftar_pengadaan_paringin;

CREATE VIEW view_daftar_pengadaan_paringin AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringin;
DROP VIEW IF EXISTS view_daftar_pengadaan_paringinselatan;

CREATE VIEW view_daftar_pengadaan_paringinselatan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_daftar_pengadaan_pariwisata;

CREATE VIEW view_daftar_pengadaan_pariwisata AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_pariwisata;
DROP VIEW IF EXISTS view_daftar_pengadaan_perdagangan;

CREATE VIEW view_daftar_pengadaan_perdagangan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_perdagangan;
DROP VIEW IF EXISTS view_daftar_pengadaan_perikanan;

CREATE VIEW view_daftar_pengadaan_perikanan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_perikanan;
DROP VIEW IF EXISTS view_daftar_pengadaan_perpustakaan;

CREATE VIEW view_daftar_pengadaan_perpustakaan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_daftar_pengadaan_pertanian;

CREATE VIEW view_daftar_pengadaan_pertanian AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_pertanian;
DROP VIEW IF EXISTS view_daftar_pengadaan_satpolpp;

CREATE VIEW view_daftar_pengadaan_satpolpp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_satpolpp;
DROP VIEW IF EXISTS view_daftar_pengadaan_setda;

CREATE VIEW view_daftar_pengadaan_setda AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_setda;
DROP VIEW IF EXISTS view_daftar_pengadaan_setwan;

CREATE VIEW view_daftar_pengadaan_setwan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_setwan;
DROP VIEW IF EXISTS view_daftar_pengadaan_sosial;

CREATE VIEW view_daftar_pengadaan_sosial AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_sosial;
DROP VIEW IF EXISTS view_daftar_pengadaan_tebingtinggi;

CREATE VIEW view_daftar_pengadaan_tebingtinggi AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_tebingtinggi;
