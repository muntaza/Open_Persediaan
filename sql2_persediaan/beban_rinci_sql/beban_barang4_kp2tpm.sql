DROP VIEW IF EXISTS view_beban_barang4_kp2tpm;

CREATE VIEW view_beban_barang4_kp2tpm AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kp2tpm

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_beban_barang4_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kp2tpm FROM lap_kp2tpm;
