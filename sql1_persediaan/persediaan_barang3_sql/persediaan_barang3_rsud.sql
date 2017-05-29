DROP VIEW IF EXISTS view_persediaan_barang3_rsud;

CREATE VIEW view_persediaan_barang3_rsud AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_rsud FROM lap_rsud;
