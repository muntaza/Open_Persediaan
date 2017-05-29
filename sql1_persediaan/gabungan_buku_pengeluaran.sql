DROP VIEW IF EXISTS view_buku_pengeluaran_awayan;

CREATE VIEW view_buku_pengeluaran_awayan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_buku_pengeluaran_bappeda;

CREATE VIEW view_buku_pengeluaran_bappeda AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_buku_pengeluaran_batumandi;

CREATE VIEW view_buku_pengeluaran_batumandi AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_buku_pengeluaran_batupiring;

CREATE VIEW view_buku_pengeluaran_batupiring AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_buku_pengeluaran_bkd;

CREATE VIEW view_buku_pengeluaran_bkd AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_buku_pengeluaran_blhk;

CREATE VIEW view_buku_pengeluaran_blhk AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_buku_pengeluaran_bpbd;

CREATE VIEW view_buku_pengeluaran_bpbd AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_buku_pengeluaran_bpmpd;

CREATE VIEW view_buku_pengeluaran_bpmpd AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_buku_pengeluaran_bppakb;

CREATE VIEW view_buku_pengeluaran_bppakb AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_buku_pengeluaran_bppkp;

CREATE VIEW view_buku_pengeluaran_bppkp AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_buku_pengeluaran_dinkes;

CREATE VIEW view_buku_pengeluaran_dinkes AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_buku_pengeluaran_disdik;

CREATE VIEW view_buku_pengeluaran_disdik AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_buku_pengeluaran_dishub;

CREATE VIEW view_buku_pengeluaran_dishub AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_buku_pengeluaran_disporaparbud;

CREATE VIEW view_buku_pengeluaran_disporaparbud AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_buku_pengeluaran_dispu;

CREATE VIEW view_buku_pengeluaran_dispu AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_buku_pengeluaran_distamben;

CREATE VIEW view_buku_pengeluaran_distamben AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_buku_pengeluaran_dppkad;

CREATE VIEW view_buku_pengeluaran_dppkad AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_buku_pengeluaran_dukcatpil;

CREATE VIEW view_buku_pengeluaran_dukcatpil AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_buku_pengeluaran_halong;

CREATE VIEW view_buku_pengeluaran_halong AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_halong FROM lap_halong;
DROP VIEW IF EXISTS view_buku_pengeluaran_inspektorat;

CREATE VIEW view_buku_pengeluaran_inspektorat AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_buku_pengeluaran_juai;

CREATE VIEW view_buku_pengeluaran_juai AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_juai FROM lap_juai;
DROP VIEW IF EXISTS view_buku_pengeluaran_kehutanan;

CREATE VIEW view_buku_pengeluaran_kehutanan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_buku_pengeluaran_kesbangpol;

CREATE VIEW view_buku_pengeluaran_kesbangpol AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_buku_pengeluaran_korpri;

CREATE VIEW view_buku_pengeluaran_korpri AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_buku_pengeluaran_kp2tpm;

CREATE VIEW view_buku_pengeluaran_kp2tpm AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_buku_pengeluaran_kpdad;

CREATE VIEW view_buku_pengeluaran_kpdad AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_buku_pengeluaran_lampihong;

CREATE VIEW view_buku_pengeluaran_lampihong AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_buku_pengeluaran_paringin;

CREATE VIEW view_buku_pengeluaran_paringin AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_buku_pengeluaran_paringinkota;

CREATE VIEW view_buku_pengeluaran_paringinkota AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_buku_pengeluaran_paringinselatan;

CREATE VIEW view_buku_pengeluaran_paringinselatan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_buku_pengeluaran_paringintimur;

CREATE VIEW view_buku_pengeluaran_paringintimur AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_buku_pengeluaran_perindagkop;

CREATE VIEW view_buku_pengeluaran_perindagkop AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_buku_pengeluaran_pertanian;

CREATE VIEW view_buku_pengeluaran_pertanian AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_buku_pengeluaran_rsud;

CREATE VIEW view_buku_pengeluaran_rsud AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_buku_pengeluaran_satpolpp;

CREATE VIEW view_buku_pengeluaran_satpolpp AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_buku_pengeluaran_setda;

CREATE VIEW view_buku_pengeluaran_setda AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_setda FROM lap_setda;
DROP VIEW IF EXISTS view_buku_pengeluaran_setwan;

CREATE VIEW view_buku_pengeluaran_setwan AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_buku_pengeluaran_snt;

CREATE VIEW view_buku_pengeluaran_snt AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_snt FROM lap_snt;
DROP VIEW IF EXISTS view_buku_pengeluaran_tebingtinggi;

CREATE VIEW view_buku_pengeluaran_tebingtinggi AS

SELECT
*

FROM
view_buku_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_buku_pengeluaran_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_buku_pengeluaran_tebingtinggi FROM lap_tebingtinggi;
