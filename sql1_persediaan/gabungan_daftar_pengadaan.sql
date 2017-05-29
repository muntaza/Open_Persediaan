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
DROP VIEW IF EXISTS view_daftar_pengadaan_batupiring;

CREATE VIEW view_daftar_pengadaan_batupiring AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_batupiring;
DROP VIEW IF EXISTS view_daftar_pengadaan_bkd;

CREATE VIEW view_daftar_pengadaan_bkd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bkd;
DROP VIEW IF EXISTS view_daftar_pengadaan_blhk;

CREATE VIEW view_daftar_pengadaan_blhk AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_blhk FROM lap_blhk;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_blhk;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_bpmpd;

CREATE VIEW view_daftar_pengadaan_bpmpd AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bpmpd FROM lap_bpmpd;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bpmpd;
DROP VIEW IF EXISTS view_daftar_pengadaan_bppakb;

CREATE VIEW view_daftar_pengadaan_bppakb AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bppakb FROM lap_bppakb;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bppakb;
DROP VIEW IF EXISTS view_daftar_pengadaan_bppkp;

CREATE VIEW view_daftar_pengadaan_bppkp AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_bppkp FROM lap_bppkp;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_disporaparbud;

CREATE VIEW view_daftar_pengadaan_disporaparbud AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_disporaparbud FROM lap_disporaparbud;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_daftar_pengadaan_dispu;

CREATE VIEW view_daftar_pengadaan_dispu AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dispu FROM lap_dispu;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dispu;
DROP VIEW IF EXISTS view_daftar_pengadaan_distamben;

CREATE VIEW view_daftar_pengadaan_distamben AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_distamben;
DROP VIEW IF EXISTS view_daftar_pengadaan_dppkad;

CREATE VIEW view_daftar_pengadaan_dppkad AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dppkad FROM lap_dppkad;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_kehutanan;

CREATE VIEW view_daftar_pengadaan_kehutanan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_korpri;

CREATE VIEW view_daftar_pengadaan_korpri AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_korpri;
DROP VIEW IF EXISTS view_daftar_pengadaan_kp2tpm;

CREATE VIEW view_daftar_pengadaan_kp2tpm AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kp2tpm FROM lap_kp2tpm;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_daftar_pengadaan_kpdad;

CREATE VIEW view_daftar_pengadaan_kpdad AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_kpdad FROM lap_kpdad;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_paringinkota;

CREATE VIEW view_daftar_pengadaan_paringinkota AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_paringintimur;

CREATE VIEW view_daftar_pengadaan_paringintimur AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_paringintimur;
DROP VIEW IF EXISTS view_daftar_pengadaan_perindagkop;

CREATE VIEW view_daftar_pengadaan_perindagkop AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_perindagkop FROM lap_perindagkop;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_rsud;

CREATE VIEW view_daftar_pengadaan_rsud AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_rsud;
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
DROP VIEW IF EXISTS view_daftar_pengadaan_snt;

CREATE VIEW view_daftar_pengadaan_snt AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_snt FROM lap_snt;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_snt;
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
