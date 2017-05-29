DROP VIEW IF EXISTS view_kartu_barang2_perindagkop;

CREATE VIEW view_kartu_barang2_perindagkop AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_kartu_barang2_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_perindagkop FROM lap_perindagkop;
