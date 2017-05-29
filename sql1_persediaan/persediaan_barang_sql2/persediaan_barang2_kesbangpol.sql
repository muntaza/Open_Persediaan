DROP VIEW IF EXISTS view_persediaan_barang2_kesbangpol;

CREATE VIEW view_persediaan_barang2_kesbangpol AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_kesbangpol FROM lap_kesbangpol;
