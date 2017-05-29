DROP VIEW IF EXISTS view_persediaan_barang2_setda;

CREATE VIEW view_persediaan_barang2_setda AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_setda FROM lap_setda;
