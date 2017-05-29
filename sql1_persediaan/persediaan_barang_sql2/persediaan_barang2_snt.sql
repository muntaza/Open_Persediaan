DROP VIEW IF EXISTS view_persediaan_barang2_snt;

CREATE VIEW view_persediaan_barang2_snt AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_snt FROM lap_snt;
