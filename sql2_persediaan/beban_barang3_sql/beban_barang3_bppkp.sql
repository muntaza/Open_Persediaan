DROP VIEW IF EXISTS view_beban_barang3_bppkp;

CREATE VIEW view_beban_barang3_bppkp AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_bppkp

WHERE
1 = 1  AND
id_skpd = 15;



GRANT ALL PRIVILEGES ON view_beban_barang3_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_bppkp FROM lap_bppkp;
