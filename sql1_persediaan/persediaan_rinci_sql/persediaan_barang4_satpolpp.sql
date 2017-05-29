DROP VIEW IF EXISTS view_persediaan_barang4_satpolpp;

CREATE VIEW view_persediaan_barang4_satpolpp AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_satpolpp

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_satpolpp FROM lap_satpolpp;
