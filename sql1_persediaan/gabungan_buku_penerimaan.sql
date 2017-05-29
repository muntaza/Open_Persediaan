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
DROP VIEW IF EXISTS view_buku_penerimaan_batupiring;

CREATE VIEW view_buku_penerimaan_batupiring AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_buku_penerimaan_bkd;

CREATE VIEW view_buku_penerimaan_bkd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_buku_penerimaan_blhk;

CREATE VIEW view_buku_penerimaan_blhk AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_blhk FROM lap_blhk;
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
DROP VIEW IF EXISTS view_buku_penerimaan_bpmpd;

CREATE VIEW view_buku_penerimaan_bpmpd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_buku_penerimaan_bppakb;

CREATE VIEW view_buku_penerimaan_bppakb AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_buku_penerimaan_bppkp;

CREATE VIEW view_buku_penerimaan_bppkp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bppkp FROM lap_bppkp;
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
DROP VIEW IF EXISTS view_buku_penerimaan_disporaparbud;

CREATE VIEW view_buku_penerimaan_disporaparbud AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_buku_penerimaan_dispu;

CREATE VIEW view_buku_penerimaan_dispu AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_buku_penerimaan_distamben;

CREATE VIEW view_buku_penerimaan_distamben AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_buku_penerimaan_dppkad;

CREATE VIEW view_buku_penerimaan_dppkad AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dppkad FROM lap_dppkad;
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
DROP VIEW IF EXISTS view_buku_penerimaan_kehutanan;

CREATE VIEW view_buku_penerimaan_kehutanan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kehutanan FROM lap_kehutanan;
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
DROP VIEW IF EXISTS view_buku_penerimaan_korpri;

CREATE VIEW view_buku_penerimaan_korpri AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_buku_penerimaan_kp2tpm;

CREATE VIEW view_buku_penerimaan_kp2tpm AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_buku_penerimaan_kpdad;

CREATE VIEW view_buku_penerimaan_kpdad AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kpdad FROM lap_kpdad;
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
DROP VIEW IF EXISTS view_buku_penerimaan_paringinkota;

CREATE VIEW view_buku_penerimaan_paringinkota AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringinkota FROM lap_paringinkota;
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
DROP VIEW IF EXISTS view_buku_penerimaan_paringintimur;

CREATE VIEW view_buku_penerimaan_paringintimur AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_buku_penerimaan_perindagkop;

CREATE VIEW view_buku_penerimaan_perindagkop AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_perindagkop FROM lap_perindagkop;
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
DROP VIEW IF EXISTS view_buku_penerimaan_rsud;

CREATE VIEW view_buku_penerimaan_rsud AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_rsud FROM lap_rsud;
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
DROP VIEW IF EXISTS view_buku_penerimaan_snt;

CREATE VIEW view_buku_penerimaan_snt AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_snt FROM lap_snt;
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
