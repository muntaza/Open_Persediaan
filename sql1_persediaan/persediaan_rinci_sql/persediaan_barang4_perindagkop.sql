DROP VIEW IF EXISTS view_persediaan_barang4_perindagkop;

CREATE VIEW view_persediaan_barang4_perindagkop AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_perindagkop

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_perindagkop FROM lap_perindagkop;
