DROP VIEW IF EXISTS view_persediaan_barang4_inspektorat;

CREATE VIEW view_persediaan_barang4_inspektorat AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_inspektorat

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 20;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_inspektorat FROM lap_inspektorat;
