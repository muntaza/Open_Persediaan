DROP VIEW IF EXISTS view_persediaan_barang3_juai;

CREATE VIEW view_persediaan_barang3_juai AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_juai FROM lap_juai;
