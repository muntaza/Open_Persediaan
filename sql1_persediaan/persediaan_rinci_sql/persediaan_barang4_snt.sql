DROP VIEW IF EXISTS view_persediaan_barang4_snt;

CREATE VIEW view_persediaan_barang4_snt AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_snt

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_snt FROM lap_snt;
