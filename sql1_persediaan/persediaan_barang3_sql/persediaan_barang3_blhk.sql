DROP VIEW IF EXISTS view_persediaan_barang3_blhk;

CREATE VIEW view_persediaan_barang3_blhk AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_blhk FROM lap_blhk;
