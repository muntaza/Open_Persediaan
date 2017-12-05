DROP VIEW IF EXISTS view_persediaan_barang3_setwan;

CREATE VIEW view_persediaan_barang3_setwan AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_setwan FROM lap_setwan;
