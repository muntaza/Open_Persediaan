DROP VIEW IF EXISTS view_persediaan_barang4_dppkad;

CREATE VIEW view_persediaan_barang4_dppkad AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dppkad

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dppkad FROM lap_dppkad;
