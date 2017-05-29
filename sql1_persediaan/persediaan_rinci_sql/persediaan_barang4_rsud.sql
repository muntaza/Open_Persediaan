DROP VIEW IF EXISTS view_persediaan_barang4_rsud;

CREATE VIEW view_persediaan_barang4_rsud AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_rsud

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_rsud FROM lap_rsud;
