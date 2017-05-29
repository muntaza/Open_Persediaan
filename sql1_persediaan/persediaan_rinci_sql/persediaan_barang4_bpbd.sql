DROP VIEW IF EXISTS view_persediaan_barang4_bpbd;

CREATE VIEW view_persediaan_barang4_bpbd AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bpbd

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 39;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bpbd FROM lap_bpbd;
