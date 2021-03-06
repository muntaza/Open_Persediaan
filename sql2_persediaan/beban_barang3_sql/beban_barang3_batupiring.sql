DROP VIEW IF EXISTS view_beban_barang3_batupiring;

CREATE VIEW view_beban_barang3_batupiring AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_beban_barang3_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_batupiring FROM lap_batupiring;
