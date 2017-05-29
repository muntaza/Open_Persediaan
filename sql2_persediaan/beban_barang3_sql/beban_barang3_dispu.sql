DROP VIEW IF EXISTS view_beban_barang3_dispu;

CREATE VIEW view_beban_barang3_dispu AS

SELECT
*,
CASE	WHEN id_jenis_transaksi = 1 AND pra_saldo < 0
	    THEN jumlah
	WHEN id_jenis_transaksi = 1 AND pra_saldo < jumlah
	    THEN (jumlah - pra_saldo)
	ELSE 0
END	AS beban


FROM
view_persediaan_barang2_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_beban_barang3_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang3_dispu FROM lap_dispu;
