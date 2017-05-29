DROP VIEW IF EXISTS view_persediaan_barang4_blhk;

CREATE VIEW view_persediaan_barang4_blhk AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_blhk

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_blhk FROM lap_blhk;
