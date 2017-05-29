DROP VIEW IF EXISTS view_kartu_barang2_halong;

CREATE VIEW view_kartu_barang2_halong AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_halong

WHERE
1 = 1  AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_kartu_barang2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_halong FROM lap_halong;
