DROP VIEW IF EXISTS view_persediaan_barang4_kp2tpm;

CREATE VIEW view_persediaan_barang4_kp2tpm AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_kp2tpm

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_kp2tpm FROM lap_kp2tpm;
