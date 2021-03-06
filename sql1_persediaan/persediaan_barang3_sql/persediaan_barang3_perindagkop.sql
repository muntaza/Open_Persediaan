DROP VIEW IF EXISTS view_persediaan_barang3_perindagkop;

CREATE VIEW view_persediaan_barang3_perindagkop AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_perindagkop FROM lap_perindagkop;
