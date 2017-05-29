DROP VIEW IF EXISTS view_kartu_barang2_bpbd;

CREATE VIEW view_kartu_barang2_bpbd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bpbd FROM lap_bpbd;
