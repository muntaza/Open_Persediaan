DROP VIEW IF EXISTS view_persediaan_barang4_awayan;

CREATE VIEW view_persediaan_barang4_awayan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_awayan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_awayan FROM lap_awayan;
