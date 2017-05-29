DROP VIEW IF EXISTS view_persediaan_barang4_kehutanan;

CREATE VIEW view_persediaan_barang4_kehutanan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kehutanan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kehutanan FROM lap_kehutanan;
