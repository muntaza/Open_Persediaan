DROP VIEW IF EXISTS view_kartu_barang2_paringinkota;

CREATE VIEW view_kartu_barang2_paringinkota AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_paringinkota

WHERE
1 = 1  AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_kartu_barang2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_paringinkota FROM lap_paringinkota;
