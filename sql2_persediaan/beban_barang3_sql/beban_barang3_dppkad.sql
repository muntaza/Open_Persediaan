DROP VIEW IF EXISTS view_beban_barang3_dppkad;

CREATE VIEW view_beban_barang3_dppkad AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_beban_barang3_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dppkad FROM lap_dppkad;
