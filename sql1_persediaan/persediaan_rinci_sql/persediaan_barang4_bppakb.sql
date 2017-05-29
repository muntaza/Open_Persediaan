DROP VIEW IF EXISTS view_persediaan_barang4_bppakb;

CREATE VIEW view_persediaan_barang4_bppakb AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bppakb

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 11;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bppakb FROM lap_bppakb;
