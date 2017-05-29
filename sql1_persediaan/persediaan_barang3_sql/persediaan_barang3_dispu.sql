DROP VIEW IF EXISTS view_persediaan_barang3_dispu;

CREATE VIEW view_persediaan_barang3_dispu AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dispu

WHERE
1 = 1  AND
id_skpd = 3;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dispu FROM lap_dispu;
