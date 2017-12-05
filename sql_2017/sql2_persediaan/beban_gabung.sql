DROP VIEW IF EXISTS view_beban_barang3_awayan;

CREATE VIEW view_beban_barang3_awayan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_beban_barang3_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_beban_barang3_bappeda;

CREATE VIEW view_beban_barang3_bappeda AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_beban_barang3_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_beban_barang3_batumandi;

CREATE VIEW view_beban_barang3_batumandi AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_beban_barang3_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_beban_barang3_bkd;

CREATE VIEW view_beban_barang3_bkd AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bkd

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_beban_barang3_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_beban_barang3_bkppd;

CREATE VIEW view_beban_barang3_bkppd AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bkppd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_beban_barang3_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_beban_barang3_bpbd;

CREATE VIEW view_beban_barang3_bpbd AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_beban_barang3_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_beban_barang3_bppd;

CREATE VIEW view_beban_barang3_bppd AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bppd

WHERE
1 = 1  AND
id_skpd = 48;



GRANT ALL PRIVILEGES ON view_beban_barang3_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_beban_barang3_dinkes;

CREATE VIEW view_beban_barang3_dinkes AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dinkes

WHERE
1 = 1  AND
id_skpd = 5;



GRANT ALL PRIVILEGES ON view_beban_barang3_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_beban_barang3_disdik;

CREATE VIEW view_beban_barang3_disdik AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_beban_barang3_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_beban_barang3_dishub;

CREATE VIEW view_beban_barang3_dishub AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_beban_barang3_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_beban_barang3_disnakertrans;

CREATE VIEW view_beban_barang3_disnakertrans AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41;



GRANT ALL PRIVILEGES ON view_beban_barang3_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_beban_barang3_dko;

CREATE VIEW view_beban_barang3_dko AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dko

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_beban_barang3_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dko FROM lap_dko;
DROP VIEW IF EXISTS view_beban_barang3_dkp;

CREATE VIEW view_beban_barang3_dkp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_beban_barang3_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_beban_barang3_dkukmp;

CREATE VIEW view_beban_barang3_dkukmp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dkukmp

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_beban_barang3_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_beban_barang3_dlh;

CREATE VIEW view_beban_barang3_dlh AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dlh

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_beban_barang3_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_beban_barang3_dpkp;

CREATE VIEW view_beban_barang3_dpkp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dpkp

WHERE
1 = 1  AND
id_skpd = 40;



GRANT ALL PRIVILEGES ON view_beban_barang3_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_beban_barang3_dpmd;

CREATE VIEW view_beban_barang3_dpmd AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dpmd

WHERE
1 = 1  AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_beban_barang3_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_beban_barang3_dpmptsp;

CREATE VIEW view_beban_barang3_dpmptsp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_beban_barang3_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_beban_barang3_dppkb;

CREATE VIEW view_beban_barang3_dppkb AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dppkb

WHERE
1 = 1  AND
id_skpd = 42;



GRANT ALL PRIVILEGES ON view_beban_barang3_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_beban_barang3_dpppa;

CREATE VIEW view_beban_barang3_dpppa AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dpppa

WHERE
1 = 1  AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_beban_barang3_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_beban_barang3_dpupr;

CREATE VIEW view_beban_barang3_dpupr AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dpupr

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_beban_barang3_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_beban_barang3_dukcatpil;

CREATE VIEW view_beban_barang3_dukcatpil AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_beban_barang3_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_beban_barang3_halong;

CREATE VIEW view_beban_barang3_halong AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_beban_barang3_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_halong FROM lap_halong;
DROP VIEW IF EXISTS view_beban_barang3_inspektorat;

CREATE VIEW view_beban_barang3_inspektorat AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_inspektorat

WHERE
1 = 1  AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_beban_barang3_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_beban_barang3_juai;

CREATE VIEW view_beban_barang3_juai AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_beban_barang3_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_juai FROM lap_juai;
DROP VIEW IF EXISTS view_beban_barang3_kearsipan;

CREATE VIEW view_beban_barang3_kearsipan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_kearsipan

WHERE
1 = 1  AND
id_skpd = 44;



GRANT ALL PRIVILEGES ON view_beban_barang3_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_beban_barang3_kesbangpol;

CREATE VIEW view_beban_barang3_kesbangpol AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_beban_barang3_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_beban_barang3_kominfo;

CREATE VIEW view_beban_barang3_kominfo AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_kominfo

WHERE
1 = 1  AND
id_skpd = 43;



GRANT ALL PRIVILEGES ON view_beban_barang3_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_beban_barang3_lampihong;

CREATE VIEW view_beban_barang3_lampihong AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_beban_barang3_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_beban_barang3_paringin;

CREATE VIEW view_beban_barang3_paringin AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_beban_barang3_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_beban_barang3_paringinselatan;

CREATE VIEW view_beban_barang3_paringinselatan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_beban_barang3_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_beban_barang3_pariwisata;

CREATE VIEW view_beban_barang3_pariwisata AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_pariwisata

WHERE
1 = 1  AND
id_skpd = 46;



GRANT ALL PRIVILEGES ON view_beban_barang3_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_beban_barang3_perdagangan;

CREATE VIEW view_beban_barang3_perdagangan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_perdagangan

WHERE
1 = 1  AND
id_skpd = 47;



GRANT ALL PRIVILEGES ON view_beban_barang3_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_beban_barang3_perikanan;

CREATE VIEW view_beban_barang3_perikanan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_perikanan

WHERE
1 = 1  AND
id_skpd = 45;



GRANT ALL PRIVILEGES ON view_beban_barang3_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_beban_barang3_perpustakaan;

CREATE VIEW view_beban_barang3_perpustakaan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_beban_barang3_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_beban_barang3_pertanian;

CREATE VIEW view_beban_barang3_pertanian AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_beban_barang3_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_beban_barang3_satpolpp;

CREATE VIEW view_beban_barang3_satpolpp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_satpolpp

WHERE
1 = 1  AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_beban_barang3_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_beban_barang3_setda;

CREATE VIEW view_beban_barang3_setda AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_beban_barang3_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_setda FROM lap_setda;
DROP VIEW IF EXISTS view_beban_barang3_setwan;

CREATE VIEW view_beban_barang3_setwan AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_beban_barang3_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_beban_barang3_sosial;

CREATE VIEW view_beban_barang3_sosial AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_sosial

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_beban_barang3_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_beban_barang3_tebingtinggi;

CREATE VIEW view_beban_barang3_tebingtinggi AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_beban_barang3_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_tebingtinggi FROM lap_tebingtinggi;
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
DROP VIEW IF EXISTS view_beban_barang5_awayan CASCADE;

CREATE VIEW view_beban_barang5_awayan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_awayan

WHERE
1 = 1  AND
id_skpd = 34

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_beban_barang5_bappeda CASCADE;

CREATE VIEW view_beban_barang5_bappeda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bappeda

WHERE
1 = 1  AND
id_skpd = 21

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_beban_barang5_batumandi CASCADE;

CREATE VIEW view_beban_barang5_batumandi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_batumandi

WHERE
1 = 1  AND
id_skpd = 32

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_beban_barang5_bkd CASCADE;

CREATE VIEW view_beban_barang5_bkd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bkd

WHERE
1 = 1  AND
id_skpd = 19

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_beban_barang5_bkppd CASCADE;

CREATE VIEW view_beban_barang5_bkppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bkppd

WHERE
1 = 1  AND
id_skpd = 26

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_beban_barang5_bpbd CASCADE;

CREATE VIEW view_beban_barang5_bpbd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bpbd

WHERE
1 = 1  AND
id_skpd = 39

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_beban_barang5_bppd CASCADE;

CREATE VIEW view_beban_barang5_bppd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_bppd

WHERE
1 = 1  AND
id_skpd = 48

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_beban_barang5_dinkes CASCADE;

CREATE VIEW view_beban_barang5_dinkes AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dinkes

WHERE
1 = 1  AND
id_skpd = 5

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_beban_barang5_disdik CASCADE;

CREATE VIEW view_beban_barang5_disdik AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_disdik

WHERE
1 = 1  AND
id_skpd = 7

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_beban_barang5_dishub CASCADE;

CREATE VIEW view_beban_barang5_dishub AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dishub

WHERE
1 = 1  AND
id_skpd = 4

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_beban_barang5_disnakertrans CASCADE;

CREATE VIEW view_beban_barang5_disnakertrans AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_disnakertrans

WHERE
1 = 1  AND
id_skpd = 41

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_beban_barang5_dko CASCADE;

CREATE VIEW view_beban_barang5_dko AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dko

WHERE
1 = 1  AND
id_skpd = 23

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dko FROM lap_dko;
DROP VIEW IF EXISTS view_beban_barang5_dkp CASCADE;

CREATE VIEW view_beban_barang5_dkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dkp

WHERE
1 = 1  AND
id_skpd = 15

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_beban_barang5_dkukmp CASCADE;

CREATE VIEW view_beban_barang5_dkukmp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dkukmp

WHERE
1 = 1  AND
id_skpd = 16

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_beban_barang5_dlh CASCADE;

CREATE VIEW view_beban_barang5_dlh AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dlh

WHERE
1 = 1  AND
id_skpd = 22

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_beban_barang5_dpkp CASCADE;

CREATE VIEW view_beban_barang5_dpkp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpkp

WHERE
1 = 1  AND
id_skpd = 40

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_beban_barang5_dpmd CASCADE;

CREATE VIEW view_beban_barang5_dpmd AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpmd

WHERE
1 = 1  AND
id_skpd = 10

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_beban_barang5_dpmptsp CASCADE;

CREATE VIEW view_beban_barang5_dpmptsp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpmptsp

WHERE
1 = 1  AND
id_skpd = 18

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_beban_barang5_dppkb CASCADE;

CREATE VIEW view_beban_barang5_dppkb AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dppkb

WHERE
1 = 1  AND
id_skpd = 42

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_beban_barang5_dpppa CASCADE;

CREATE VIEW view_beban_barang5_dpppa AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpppa

WHERE
1 = 1  AND
id_skpd = 11

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_beban_barang5_dpupr CASCADE;

CREATE VIEW view_beban_barang5_dpupr AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dpupr

WHERE
1 = 1  AND
id_skpd = 3

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_beban_barang5_dukcatpil CASCADE;

CREATE VIEW view_beban_barang5_dukcatpil AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_beban_barang5_halong CASCADE;

CREATE VIEW view_beban_barang5_halong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_halong

WHERE
1 = 1  AND
id_skpd = 35

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_halong FROM lap_halong;
DROP VIEW IF EXISTS view_beban_barang5_inspektorat CASCADE;

CREATE VIEW view_beban_barang5_inspektorat AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_inspektorat

WHERE
1 = 1  AND
id_skpd = 20

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_beban_barang5_juai CASCADE;

CREATE VIEW view_beban_barang5_juai AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_juai

WHERE
1 = 1  AND
id_skpd = 33

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_juai FROM lap_juai;
DROP VIEW IF EXISTS view_beban_barang5_kearsipan CASCADE;

CREATE VIEW view_beban_barang5_kearsipan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kearsipan

WHERE
1 = 1  AND
id_skpd = 44

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_beban_barang5_kesbangpol CASCADE;

CREATE VIEW view_beban_barang5_kesbangpol AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_beban_barang5_kominfo CASCADE;

CREATE VIEW view_beban_barang5_kominfo AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_kominfo

WHERE
1 = 1  AND
id_skpd = 43

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_beban_barang5_lampihong CASCADE;

CREATE VIEW view_beban_barang5_lampihong AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_lampihong

WHERE
1 = 1  AND
id_skpd = 31

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_beban_barang5_paringin CASCADE;

CREATE VIEW view_beban_barang5_paringin AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_paringin

WHERE
1 = 1  AND
id_skpd = 28

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_beban_barang5_paringinselatan CASCADE;

CREATE VIEW view_beban_barang5_paringinselatan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_beban_barang5_pariwisata CASCADE;

CREATE VIEW view_beban_barang5_pariwisata AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_pariwisata

WHERE
1 = 1  AND
id_skpd = 46

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_beban_barang5_perdagangan CASCADE;

CREATE VIEW view_beban_barang5_perdagangan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perdagangan

WHERE
1 = 1  AND
id_skpd = 47

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_beban_barang5_perikanan CASCADE;

CREATE VIEW view_beban_barang5_perikanan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perikanan

WHERE
1 = 1  AND
id_skpd = 45

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_beban_barang5_perpustakaan CASCADE;

CREATE VIEW view_beban_barang5_perpustakaan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_perpustakaan

WHERE
1 = 1  AND
id_skpd = 8

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_beban_barang5_pertanian CASCADE;

CREATE VIEW view_beban_barang5_pertanian AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_pertanian

WHERE
1 = 1  AND
id_skpd = 13

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_beban_barang5_satpolpp CASCADE;

CREATE VIEW view_beban_barang5_satpolpp AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_satpolpp

WHERE
1 = 1  AND
id_skpd = 25

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_beban_barang5_setda CASCADE;

CREATE VIEW view_beban_barang5_setda AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_setda

WHERE
1 = 1  AND
id_skpd = 2

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_setda FROM lap_setda;
DROP VIEW IF EXISTS view_beban_barang5_setwan CASCADE;

CREATE VIEW view_beban_barang5_setwan AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_setwan

WHERE
1 = 1  AND
id_skpd = 1

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_beban_barang5_sosial CASCADE;

CREATE VIEW view_beban_barang5_sosial AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_sosial

WHERE
1 = 1  AND
id_skpd = 9

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_beban_barang5_tebingtinggi CASCADE;

CREATE VIEW view_beban_barang5_tebingtinggi AS

SELECT
nama_provinsi,
id_provinsi,

nama_kabupaten,
id_kabupaten,

nama_lokasi_bidang,
id_lokasi_bidang,

nama_skpd,
id_skpd,

nama_barang,
kode_barang,

satuan,
id_satuan,

jenis_barang,
id_jenis_barang,

sum(beban) AS total_beban_barang,
sum(jumlah_harga) AS total_harga

FROM
view_beban_barang4_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38

GROUP BY
nama_provinsi,
id_provinsi,
nama_kabupaten,
id_kabupaten,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_skpd,
id_skpd,
nama_barang,
kode_barang,
satuan,
id_satuan,
jenis_barang,
id_jenis_barang

;


GRANT ALL PRIVILEGES ON view_beban_barang5_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang5_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_daftar_barang_kabupaten CASCADE;


CREATE VIEW view_daftar_barang_kabupaten AS

SELECT
barang.nama_barang,
barang.id as kode_barang,

satuan.satuan,
barang.id_satuan,

jenis_barang.jenis_barang,
barang.id_jenis_barang


FROM
barang join satuan ON barang.id_satuan = satuan.id
join jenis_barang ON barang.id_jenis_barang = jenis_barang.id


WHERE
1 = 1;


GRANT ALL PRIVILEGES ON view_daftar_barang_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_daftar_barang_awayan;

CREATE VIEW view_daftar_barang_awayan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_daftar_barang_bappeda;

CREATE VIEW view_daftar_barang_bappeda AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_daftar_barang_batumandi;

CREATE VIEW view_daftar_barang_batumandi AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_daftar_barang_bkd;

CREATE VIEW view_daftar_barang_bkd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_daftar_barang_bkppd;

CREATE VIEW view_daftar_barang_bkppd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_daftar_barang_bpbd;

CREATE VIEW view_daftar_barang_bpbd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_daftar_barang_bppd;

CREATE VIEW view_daftar_barang_bppd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_daftar_barang_dinkes;

CREATE VIEW view_daftar_barang_dinkes AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_daftar_barang_disdik;

CREATE VIEW view_daftar_barang_disdik AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_daftar_barang_dishub;

CREATE VIEW view_daftar_barang_dishub AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_daftar_barang_disnakertrans;

CREATE VIEW view_daftar_barang_disnakertrans AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_daftar_barang_dko;

CREATE VIEW view_daftar_barang_dko AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dko FROM lap_dko;
DROP VIEW IF EXISTS view_daftar_barang_dkp;

CREATE VIEW view_daftar_barang_dkp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_daftar_barang_dkukmp;

CREATE VIEW view_daftar_barang_dkukmp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_daftar_barang_dlh;

CREATE VIEW view_daftar_barang_dlh AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_daftar_barang_dpkp;

CREATE VIEW view_daftar_barang_dpkp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_daftar_barang_dpmd;

CREATE VIEW view_daftar_barang_dpmd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_daftar_barang_dpmptsp;

CREATE VIEW view_daftar_barang_dpmptsp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_daftar_barang_dppkb;

CREATE VIEW view_daftar_barang_dppkb AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_daftar_barang_dpppa;

CREATE VIEW view_daftar_barang_dpppa AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_daftar_barang_dpupr;

CREATE VIEW view_daftar_barang_dpupr AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_daftar_barang_dukcatpil;

CREATE VIEW view_daftar_barang_dukcatpil AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_daftar_barang_halong;

CREATE VIEW view_daftar_barang_halong AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_halong FROM lap_halong;
DROP VIEW IF EXISTS view_daftar_barang_inspektorat;

CREATE VIEW view_daftar_barang_inspektorat AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_daftar_barang_juai;

CREATE VIEW view_daftar_barang_juai AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_juai FROM lap_juai;
DROP VIEW IF EXISTS view_daftar_barang_kearsipan;

CREATE VIEW view_daftar_barang_kearsipan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_daftar_barang_kesbangpol;

CREATE VIEW view_daftar_barang_kesbangpol AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_daftar_barang_kominfo;

CREATE VIEW view_daftar_barang_kominfo AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_daftar_barang_lampihong;

CREATE VIEW view_daftar_barang_lampihong AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_daftar_barang_paringin;

CREATE VIEW view_daftar_barang_paringin AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_daftar_barang_paringinselatan;

CREATE VIEW view_daftar_barang_paringinselatan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_daftar_barang_pariwisata;

CREATE VIEW view_daftar_barang_pariwisata AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_daftar_barang_perdagangan;

CREATE VIEW view_daftar_barang_perdagangan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_daftar_barang_perikanan;

CREATE VIEW view_daftar_barang_perikanan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_daftar_barang_perpustakaan;

CREATE VIEW view_daftar_barang_perpustakaan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_daftar_barang_pertanian;

CREATE VIEW view_daftar_barang_pertanian AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_daftar_barang_satpolpp;

CREATE VIEW view_daftar_barang_satpolpp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_daftar_barang_setda;

CREATE VIEW view_daftar_barang_setda AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_setda FROM lap_setda;
DROP VIEW IF EXISTS view_daftar_barang_setwan;

CREATE VIEW view_daftar_barang_setwan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_daftar_barang_sosial;

CREATE VIEW view_daftar_barang_sosial AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_daftar_barang_tebingtinggi;

CREATE VIEW view_daftar_barang_tebingtinggi AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_tebingtinggi FROM lap_tebingtinggi;
DROP VIEW IF EXISTS view_beban_barang_rinci_kabupaten CASCADE;
CREATE VIEW view_beban_barang_rinci_kabupaten AS

SELECT
*

FROM
view_beban_barang4_awayan

UNION ALL
SELECT
*

FROM
view_beban_barang4_bappeda

UNION ALL
SELECT
*

FROM
view_beban_barang4_batumandi

UNION ALL
SELECT
*

FROM
view_beban_barang4_bkd

UNION ALL
SELECT
*

FROM
view_beban_barang4_bkppd

UNION ALL
SELECT
*

FROM
view_beban_barang4_bpbd

UNION ALL
SELECT
*

FROM
view_beban_barang4_bppd

UNION ALL
SELECT
*

FROM
view_beban_barang4_dinkes

UNION ALL
SELECT
*

FROM
view_beban_barang4_disdik

UNION ALL
SELECT
*

FROM
view_beban_barang4_dishub

UNION ALL
SELECT
*

FROM
view_beban_barang4_disnakertrans

UNION ALL
SELECT
*

FROM
view_beban_barang4_dko

UNION ALL
SELECT
*

FROM
view_beban_barang4_dkp

UNION ALL
SELECT
*

FROM
view_beban_barang4_dkukmp

UNION ALL
SELECT
*

FROM
view_beban_barang4_dlh

UNION ALL
SELECT
*

FROM
view_beban_barang4_dpkp

UNION ALL
SELECT
*

FROM
view_beban_barang4_dpmd

UNION ALL
SELECT
*

FROM
view_beban_barang4_dpmptsp

UNION ALL
SELECT
*

FROM
view_beban_barang4_dppkb

UNION ALL
SELECT
*

FROM
view_beban_barang4_dpppa

UNION ALL
SELECT
*

FROM
view_beban_barang4_dpupr

UNION ALL
SELECT
*

FROM
view_beban_barang4_dukcatpil

UNION ALL
SELECT
*

FROM
view_beban_barang4_halong

UNION ALL
SELECT
*

FROM
view_beban_barang4_inspektorat

UNION ALL
SELECT
*

FROM
view_beban_barang4_juai

UNION ALL
SELECT
*

FROM
view_beban_barang4_kearsipan

UNION ALL
SELECT
*

FROM
view_beban_barang4_kesbangpol

UNION ALL
SELECT
*

FROM
view_beban_barang4_kominfo

UNION ALL
SELECT
*

FROM
view_beban_barang4_lampihong

UNION ALL
SELECT
*

FROM
view_beban_barang4_paringin

UNION ALL
SELECT
*

FROM
view_beban_barang4_paringinselatan

UNION ALL
SELECT
*

FROM
view_beban_barang4_pariwisata

UNION ALL
SELECT
*

FROM
view_beban_barang4_perdagangan

UNION ALL
SELECT
*

FROM
view_beban_barang4_perikanan

UNION ALL
SELECT
*

FROM
view_beban_barang4_perpustakaan

UNION ALL
SELECT
*

FROM
view_beban_barang4_pertanian

UNION ALL
SELECT
*

FROM
view_beban_barang4_satpolpp

UNION ALL
SELECT
*

FROM
view_beban_barang4_setda

UNION ALL
SELECT
*

FROM
view_beban_barang4_setwan

UNION ALL
SELECT
*

FROM
view_beban_barang4_sosial

UNION ALL
SELECT
*

FROM
view_beban_barang4_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_beban_barang_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang_rinci_kabupaten FROM lap_kabupaten;
DROP VIEW IF EXISTS view_beban_barang_rekap_kabupaten CASCADE;
CREATE VIEW view_beban_barang_rekap_kabupaten AS

SELECT
*

FROM
view_beban_barang5_awayan

UNION ALL
SELECT
*

FROM
view_beban_barang5_bappeda

UNION ALL
SELECT
*

FROM
view_beban_barang5_batumandi

UNION ALL
SELECT
*

FROM
view_beban_barang5_bkd

UNION ALL
SELECT
*

FROM
view_beban_barang5_bkppd

UNION ALL
SELECT
*

FROM
view_beban_barang5_bpbd

UNION ALL
SELECT
*

FROM
view_beban_barang5_bppd

UNION ALL
SELECT
*

FROM
view_beban_barang5_dinkes

UNION ALL
SELECT
*

FROM
view_beban_barang5_disdik

UNION ALL
SELECT
*

FROM
view_beban_barang5_dishub

UNION ALL
SELECT
*

FROM
view_beban_barang5_disnakertrans

UNION ALL
SELECT
*

FROM
view_beban_barang5_dko

UNION ALL
SELECT
*

FROM
view_beban_barang5_dkp

UNION ALL
SELECT
*

FROM
view_beban_barang5_dkukmp

UNION ALL
SELECT
*

FROM
view_beban_barang5_dlh

UNION ALL
SELECT
*

FROM
view_beban_barang5_dpkp

UNION ALL
SELECT
*

FROM
view_beban_barang5_dpmd

UNION ALL
SELECT
*

FROM
view_beban_barang5_dpmptsp

UNION ALL
SELECT
*

FROM
view_beban_barang5_dppkb

UNION ALL
SELECT
*

FROM
view_beban_barang5_dpppa

UNION ALL
SELECT
*

FROM
view_beban_barang5_dpupr

UNION ALL
SELECT
*

FROM
view_beban_barang5_dukcatpil

UNION ALL
SELECT
*

FROM
view_beban_barang5_halong

UNION ALL
SELECT
*

FROM
view_beban_barang5_inspektorat

UNION ALL
SELECT
*

FROM
view_beban_barang5_juai

UNION ALL
SELECT
*

FROM
view_beban_barang5_kearsipan

UNION ALL
SELECT
*

FROM
view_beban_barang5_kesbangpol

UNION ALL
SELECT
*

FROM
view_beban_barang5_kominfo

UNION ALL
SELECT
*

FROM
view_beban_barang5_lampihong

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringin

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringinselatan

UNION ALL
SELECT
*

FROM
view_beban_barang5_pariwisata

UNION ALL
SELECT
*

FROM
view_beban_barang5_perdagangan

UNION ALL
SELECT
*

FROM
view_beban_barang5_perikanan

UNION ALL
SELECT
*

FROM
view_beban_barang5_perpustakaan

UNION ALL
SELECT
*

FROM
view_beban_barang5_pertanian

UNION ALL
SELECT
*

FROM
view_beban_barang5_satpolpp

UNION ALL
SELECT
*

FROM
view_beban_barang5_setda

UNION ALL
SELECT
*

FROM
view_beban_barang5_setwan

UNION ALL
SELECT
*

FROM
view_beban_barang5_sosial

UNION ALL
SELECT
*

FROM
view_beban_barang5_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_beban_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang_rekap_kabupaten FROM lap_kabupaten;
