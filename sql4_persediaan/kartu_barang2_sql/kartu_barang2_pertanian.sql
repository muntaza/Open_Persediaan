DROP VIEW IF EXISTS view_kartu_barang2_pertanian;

CREATE VIEW view_kartu_barang2_pertanian AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_pertanian

WHERE
1 = 1  AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_kartu_barang2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_pertanian FROM lap_pertanian;
