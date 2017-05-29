DROP VIEW IF EXISTS view_kartu_barang2_rsud;

CREATE VIEW view_kartu_barang2_rsud AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_rsud

WHERE
1 = 1  AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_kartu_barang2_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_rsud FROM lap_rsud;
