DROP VIEW IF EXISTS view_persediaan_barang4_bkd;

CREATE VIEW view_persediaan_barang4_bkd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bkd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bkd FROM lap_bkd;
