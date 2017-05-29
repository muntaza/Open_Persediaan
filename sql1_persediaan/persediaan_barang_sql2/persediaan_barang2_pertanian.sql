DROP VIEW IF EXISTS view_persediaan_barang2_pertanian;

CREATE VIEW view_persediaan_barang2_pertanian AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_pertanian FROM lap_pertanian;
