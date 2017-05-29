DROP VIEW IF EXISTS view_kartu_barang2_snt;

CREATE VIEW view_kartu_barang2_snt AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_snt

WHERE
1 = 1  AND
id_skpd = 9;



GRANT ALL PRIVILEGES ON view_kartu_barang2_snt TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_snt FROM lap_snt;
