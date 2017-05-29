DROP VIEW IF EXISTS view_persediaan_barang3_dppkad;

CREATE VIEW view_persediaan_barang3_dppkad AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dppkad

WHERE
1 = 1  AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dppkad FROM lap_dppkad;
