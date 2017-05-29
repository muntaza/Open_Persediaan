DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_awayan;

CREATE VIEW view_kartu_barang_sub_skpd2_awayan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bappeda;

CREATE VIEW view_kartu_barang_sub_skpd2_bappeda AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_batumandi;

CREATE VIEW view_kartu_barang_sub_skpd2_batumandi AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_batupiring;

CREATE VIEW view_kartu_barang_sub_skpd2_batupiring AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bkd;

CREATE VIEW view_kartu_barang_sub_skpd2_bkd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_blhk;

CREATE VIEW view_kartu_barang_sub_skpd2_blhk AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bpbd;

CREATE VIEW view_kartu_barang_sub_skpd2_bpbd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bpmpd;

CREATE VIEW view_kartu_barang_sub_skpd2_bpmpd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bppakb;

CREATE VIEW view_kartu_barang_sub_skpd2_bppakb AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_bppkp;

CREATE VIEW view_kartu_barang_sub_skpd2_bppkp AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_dinkes;

CREATE VIEW view_kartu_barang_sub_skpd2_dinkes AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_disdik;

CREATE VIEW view_kartu_barang_sub_skpd2_disdik AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_dishub;

CREATE VIEW view_kartu_barang_sub_skpd2_dishub AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_disporaparbud;

CREATE VIEW view_kartu_barang_sub_skpd2_disporaparbud AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_dispu;

CREATE VIEW view_kartu_barang_sub_skpd2_dispu AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_distamben;

CREATE VIEW view_kartu_barang_sub_skpd2_distamben AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_dppkad;

CREATE VIEW view_kartu_barang_sub_skpd2_dppkad AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_dukcatpil;

CREATE VIEW view_kartu_barang_sub_skpd2_dukcatpil AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_halong;

CREATE VIEW view_kartu_barang_sub_skpd2_halong AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_halong FROM lap_halong;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_inspektorat;

CREATE VIEW view_kartu_barang_sub_skpd2_inspektorat AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_juai;

CREATE VIEW view_kartu_barang_sub_skpd2_juai AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_juai FROM lap_juai;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_kehutanan;

CREATE VIEW view_kartu_barang_sub_skpd2_kehutanan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_kesbangpol;

CREATE VIEW view_kartu_barang_sub_skpd2_kesbangpol AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_korpri;

CREATE VIEW view_kartu_barang_sub_skpd2_korpri AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_kp2tpm;

CREATE VIEW view_kartu_barang_sub_skpd2_kp2tpm AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_kpdad;

CREATE VIEW view_kartu_barang_sub_skpd2_kpdad AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_lampihong;

CREATE VIEW view_kartu_barang_sub_skpd2_lampihong AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_paringin;

CREATE VIEW view_kartu_barang_sub_skpd2_paringin AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_paringinkota;

CREATE VIEW view_kartu_barang_sub_skpd2_paringinkota AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_paringinselatan;

CREATE VIEW view_kartu_barang_sub_skpd2_paringinselatan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_paringintimur;

CREATE VIEW view_kartu_barang_sub_skpd2_paringintimur AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_perindagkop;

CREATE VIEW view_kartu_barang_sub_skpd2_perindagkop AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_pertanian;

CREATE VIEW view_kartu_barang_sub_skpd2_pertanian AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_rsud;

CREATE VIEW view_kartu_barang_sub_skpd2_rsud AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_satpolpp;

CREATE VIEW view_kartu_barang_sub_skpd2_satpolpp AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_setda;

CREATE VIEW view_kartu_barang_sub_skpd2_setda AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_setda FROM lap_setda;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_setwan;

CREATE VIEW view_kartu_barang_sub_skpd2_setwan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_snt;

CREATE VIEW view_kartu_barang_sub_skpd2_snt AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_snt FROM lap_snt;
DROP VIEW IF EXISTS view_kartu_barang_sub_skpd2_tebingtinggi;

CREATE VIEW view_kartu_barang_sub_skpd2_tebingtinggi AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY id_sub_skpd,  kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_sub_skpd_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd2_tebingtinggi FROM lap_tebingtinggi;
