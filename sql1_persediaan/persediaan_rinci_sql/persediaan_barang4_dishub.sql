DROP VIEW IF EXISTS view_persediaan_barang4_dishub;

CREATE VIEW view_persediaan_barang4_dishub AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dishub

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dishub FROM lap_dishub;
