DROP VIEW IF EXISTS view_persediaan_barang4_setda;

CREATE VIEW view_persediaan_barang4_setda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_setda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_setda FROM lap_setda;
