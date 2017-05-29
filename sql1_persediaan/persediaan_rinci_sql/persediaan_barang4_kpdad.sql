DROP VIEW IF EXISTS view_persediaan_barang4_kpdad;

CREATE VIEW view_persediaan_barang4_kpdad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kpdad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kpdad FROM lap_kpdad;
