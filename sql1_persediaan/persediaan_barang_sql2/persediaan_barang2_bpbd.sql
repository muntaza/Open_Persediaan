DROP VIEW IF EXISTS view_persediaan_barang2_bpbd;

CREATE VIEW view_persediaan_barang2_bpbd AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_bpbd

WHERE
1 = 1  AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_bpbd FROM lap_bpbd;
