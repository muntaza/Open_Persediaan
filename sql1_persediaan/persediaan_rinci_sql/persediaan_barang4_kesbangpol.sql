DROP VIEW IF EXISTS view_persediaan_barang4_kesbangpol;

CREATE VIEW view_persediaan_barang4_kesbangpol AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kesbangpol

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kesbangpol FROM lap_kesbangpol;
