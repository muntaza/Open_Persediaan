DROP VIEW IF EXISTS view_persediaan_barang4_halong;

CREATE VIEW view_persediaan_barang4_halong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_halong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_halong FROM lap_halong;
