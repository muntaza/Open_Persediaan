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
