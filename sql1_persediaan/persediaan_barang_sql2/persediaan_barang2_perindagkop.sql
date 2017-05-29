DROP VIEW IF EXISTS view_persediaan_barang2_perindagkop;

CREATE VIEW view_persediaan_barang2_perindagkop AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_perindagkop

WHERE
1 = 1  AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_perindagkop FROM lap_perindagkop;
