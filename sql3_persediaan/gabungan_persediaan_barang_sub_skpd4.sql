DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_awayan;

CREATE VIEW view_persediaan_barang_sub_skpd4_awayan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_awayan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bappeda;

CREATE VIEW view_persediaan_barang_sub_skpd4_bappeda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bappeda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_batumandi;

CREATE VIEW view_persediaan_barang_sub_skpd4_batumandi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_batumandi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_batupiring;

CREATE VIEW view_persediaan_barang_sub_skpd4_batupiring AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_batupiring

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bkd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bkd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bkd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_blhk;

CREATE VIEW view_persediaan_barang_sub_skpd4_blhk AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_blhk

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bpbd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bpbd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bpbd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bpmpd;

CREATE VIEW view_persediaan_barang_sub_skpd4_bpmpd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bpmpd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bppakb;

CREATE VIEW view_persediaan_barang_sub_skpd4_bppakb AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bppakb

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_bppkp;

CREATE VIEW view_persediaan_barang_sub_skpd4_bppkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_bppkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dinkes;

CREATE VIEW view_persediaan_barang_sub_skpd4_dinkes AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dinkes

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_disdik;

CREATE VIEW view_persediaan_barang_sub_skpd4_disdik AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_disdik

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dishub;

CREATE VIEW view_persediaan_barang_sub_skpd4_dishub AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dishub

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_disporaparbud;

CREATE VIEW view_persediaan_barang_sub_skpd4_disporaparbud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_disporaparbud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dispu;

CREATE VIEW view_persediaan_barang_sub_skpd4_dispu AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dispu

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_distamben;

CREATE VIEW view_persediaan_barang_sub_skpd4_distamben AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_distamben

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dppkad;

CREATE VIEW view_persediaan_barang_sub_skpd4_dppkad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dppkad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_dukcatpil;

CREATE VIEW view_persediaan_barang_sub_skpd4_dukcatpil AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_dukcatpil

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_halong;

CREATE VIEW view_persediaan_barang_sub_skpd4_halong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_halong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_inspektorat;

CREATE VIEW view_persediaan_barang_sub_skpd4_inspektorat AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_inspektorat

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_juai;

CREATE VIEW view_persediaan_barang_sub_skpd4_juai AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_juai

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kehutanan;

CREATE VIEW view_persediaan_barang_sub_skpd4_kehutanan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kehutanan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kesbangpol;

CREATE VIEW view_persediaan_barang_sub_skpd4_kesbangpol AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kesbangpol

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_korpri;

CREATE VIEW view_persediaan_barang_sub_skpd4_korpri AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_korpri

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kp2tpm;

CREATE VIEW view_persediaan_barang_sub_skpd4_kp2tpm AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kp2tpm

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_kpdad;

CREATE VIEW view_persediaan_barang_sub_skpd4_kpdad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_kpdad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_lampihong;

CREATE VIEW view_persediaan_barang_sub_skpd4_lampihong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_lampihong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringin;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringin AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringin

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringinkota;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringinkota AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringinkota

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringinselatan;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringinselatan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringinselatan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_paringintimur;

CREATE VIEW view_persediaan_barang_sub_skpd4_paringintimur AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_paringintimur

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_perindagkop;

CREATE VIEW view_persediaan_barang_sub_skpd4_perindagkop AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_perindagkop

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_pertanian;

CREATE VIEW view_persediaan_barang_sub_skpd4_pertanian AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_pertanian

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_rsud;

CREATE VIEW view_persediaan_barang_sub_skpd4_rsud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_rsud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_satpolpp;

CREATE VIEW view_persediaan_barang_sub_skpd4_satpolpp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_satpolpp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_setda;

CREATE VIEW view_persediaan_barang_sub_skpd4_setda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_setda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_setwan;

CREATE VIEW view_persediaan_barang_sub_skpd4_setwan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_setwan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_snt;

CREATE VIEW view_persediaan_barang_sub_skpd4_snt AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_snt

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang_sub_skpd4_tebingtinggi;

CREATE VIEW view_persediaan_barang_sub_skpd4_tebingtinggi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang_sub_skpd3_tebingtinggi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang_sub_skpd4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_sub_skpd4_tebingtinggi FROM lap_tebingtinggi;
