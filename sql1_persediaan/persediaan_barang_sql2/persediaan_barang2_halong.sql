DROP VIEW IF EXISTS view_persediaan_barang2_halong;

CREATE VIEW view_persediaan_barang2_halong AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_halong FROM lap_halong;
