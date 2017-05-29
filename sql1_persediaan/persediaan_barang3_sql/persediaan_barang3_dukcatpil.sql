DROP VIEW IF EXISTS view_persediaan_barang3_dukcatpil;

CREATE VIEW view_persediaan_barang3_dukcatpil AS

SELECT
*,
CASE	WHEN pra_saldo > 0 AND jumlah >= pra_saldo
	    THEN pra_saldo
	WHEN pra_saldo > 0 AND jumlah < pra_saldo
	    THEN jumlah
	ELSE 0
END	AS saldo


FROM
view_persediaan_barang2_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang3_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang3_dukcatpil FROM lap_dukcatpil;
