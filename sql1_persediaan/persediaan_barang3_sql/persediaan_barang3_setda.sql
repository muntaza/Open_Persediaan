DROP VIEW IF EXISTS view_persediaan_barang3_setda;

CREATE VIEW view_persediaan_barang3_setda AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setda FROM lap_setda;
