DROP VIEW IF EXISTS view_persediaan_barang4_bppkp;

CREATE VIEW view_persediaan_barang4_bppkp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bppkp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bppkp FROM lap_bppkp;
