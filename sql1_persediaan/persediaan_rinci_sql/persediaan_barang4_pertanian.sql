DROP VIEW IF EXISTS view_persediaan_barang4_pertanian;

CREATE VIEW view_persediaan_barang4_pertanian AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_pertanian

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_pertanian FROM lap_pertanian;
