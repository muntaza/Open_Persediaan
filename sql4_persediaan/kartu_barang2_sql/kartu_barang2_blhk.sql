DROP VIEW IF EXISTS view_kartu_barang2_blhk;

CREATE VIEW view_kartu_barang2_blhk AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_blhk

WHERE
1 = 1  AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_kartu_barang2_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_blhk FROM lap_blhk;
