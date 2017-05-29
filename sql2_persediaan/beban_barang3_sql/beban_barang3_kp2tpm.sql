DROP VIEW IF EXISTS view_beban_barang3_kp2tpm;

CREATE VIEW view_beban_barang3_kp2tpm AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_kp2tpm

WHERE
1 = 1  AND
id_skpd = 18;



GRANT ALL PRIVILEGES ON view_beban_barang3_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_kp2tpm FROM lap_kp2tpm;
