DROP VIEW IF EXISTS view_persediaan_barang2_paringinkota;

CREATE VIEW view_persediaan_barang2_paringinkota AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_paringinkota FROM lap_paringinkota;
