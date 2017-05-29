DROP VIEW IF EXISTS view_persediaan_barang4_tebingtinggi;

CREATE VIEW view_persediaan_barang4_tebingtinggi AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_tebingtinggi

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_tebingtinggi FROM lap_tebingtinggi;
