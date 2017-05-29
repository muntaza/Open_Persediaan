DROP VIEW IF EXISTS view_persediaan_barang3_awayan;

CREATE VIEW view_persediaan_barang3_awayan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_persediaan_barang3_bappeda;

CREATE VIEW view_persediaan_barang3_bappeda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_persediaan_barang3_batumandi;

CREATE VIEW view_persediaan_barang3_batumandi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_persediaan_barang3_batupiring;

CREATE VIEW view_persediaan_barang3_batupiring AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_persediaan_barang3_bkd;

CREATE VIEW view_persediaan_barang3_bkd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_persediaan_barang3_blhk;

CREATE VIEW view_persediaan_barang3_blhk AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_blhk FROM lap_blhk;
DROP VIEW IF EXISTS view_persediaan_barang3_bpbd;

CREATE VIEW view_persediaan_barang3_bpbd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_persediaan_barang3_bpmpd;

CREATE VIEW view_persediaan_barang3_bpmpd AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bpmpd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bpmpd FROM lap_bpmpd;
DROP VIEW IF EXISTS view_persediaan_barang3_bppakb;

CREATE VIEW view_persediaan_barang3_bppakb AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bppakb

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bppakb FROM lap_bppakb;
DROP VIEW IF EXISTS view_persediaan_barang3_bppkp;

CREATE VIEW view_persediaan_barang3_bppkp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_bppkp FROM lap_bppkp;
DROP VIEW IF EXISTS view_persediaan_barang3_dinkes;

CREATE VIEW view_persediaan_barang3_dinkes AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_persediaan_barang3_disdik;

CREATE VIEW view_persediaan_barang3_disdik AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_persediaan_barang3_dishub;

CREATE VIEW view_persediaan_barang3_dishub AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_persediaan_barang3_disporaparbud;

CREATE VIEW view_persediaan_barang3_disporaparbud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_disporaparbud FROM lap_disporaparbud;
DROP VIEW IF EXISTS view_persediaan_barang3_dispu;

CREATE VIEW view_persediaan_barang3_dispu AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dispu FROM lap_dispu;
DROP VIEW IF EXISTS view_persediaan_barang3_distamben;

CREATE VIEW view_persediaan_barang3_distamben AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_distamben

WHERE
1 = 1  AND
id_skpd = 17;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_persediaan_barang3_dppkad;

CREATE VIEW view_persediaan_barang3_dppkad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dppkad FROM lap_dppkad;
DROP VIEW IF EXISTS view_persediaan_barang3_dukcatpil;

CREATE VIEW view_persediaan_barang3_dukcatpil AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_persediaan_barang3_halong;

CREATE VIEW view_persediaan_barang3_halong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_halong FROM lap_halong;
DROP VIEW IF EXISTS view_persediaan_barang3_inspektorat;

CREATE VIEW view_persediaan_barang3_inspektorat AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_persediaan_barang3_juai;

CREATE VIEW view_persediaan_barang3_juai AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_juai FROM lap_juai;
DROP VIEW IF EXISTS view_persediaan_barang3_kehutanan;

CREATE VIEW view_persediaan_barang3_kehutanan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_persediaan_barang3_kesbangpol;

CREATE VIEW view_persediaan_barang3_kesbangpol AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_persediaan_barang3_korpri;

CREATE VIEW view_persediaan_barang3_korpri AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_korpri

WHERE
1 = 1  AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_persediaan_barang3_kp2tpm;

CREATE VIEW view_persediaan_barang3_kp2tpm AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kp2tpm FROM lap_kp2tpm;
DROP VIEW IF EXISTS view_persediaan_barang3_kpdad;

CREATE VIEW view_persediaan_barang3_kpdad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_kpdad

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_kpdad FROM lap_kpdad;
DROP VIEW IF EXISTS view_persediaan_barang3_lampihong;

CREATE VIEW view_persediaan_barang3_lampihong AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_persediaan_barang3_paringin;

CREATE VIEW view_persediaan_barang3_paringin AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_persediaan_barang3_paringinkota;

CREATE VIEW view_persediaan_barang3_paringinkota AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_persediaan_barang3_paringinselatan;

CREATE VIEW view_persediaan_barang3_paringinselatan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_persediaan_barang3_paringintimur;

CREATE VIEW view_persediaan_barang3_paringintimur AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_paringintimur

WHERE
1 = 1  AND
id_skpd = 30;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_persediaan_barang3_perindagkop;

CREATE VIEW view_persediaan_barang3_perindagkop AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perindagkop FROM lap_perindagkop;
DROP VIEW IF EXISTS view_persediaan_barang3_pertanian;

CREATE VIEW view_persediaan_barang3_pertanian AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_persediaan_barang3_rsud;

CREATE VIEW view_persediaan_barang3_rsud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_persediaan_barang3_satpolpp;

CREATE VIEW view_persediaan_barang3_satpolpp AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_persediaan_barang3_setda;

CREATE VIEW view_persediaan_barang3_setda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setda FROM lap_setda;
DROP VIEW IF EXISTS view_persediaan_barang3_setwan;

CREATE VIEW view_persediaan_barang3_setwan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_persediaan_barang3_snt;

CREATE VIEW view_persediaan_barang3_snt AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_snt FROM lap_snt;
DROP VIEW IF EXISTS view_persediaan_barang3_tebingtinggi;

CREATE VIEW view_persediaan_barang3_tebingtinggi AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_tebingtinggi FROM lap_tebingtinggi;
