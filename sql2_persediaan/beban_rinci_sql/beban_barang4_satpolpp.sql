DROP VIEW IF EXISTS view_beban_barang4_satpolpp;

CREATE VIEW view_beban_barang4_satpolpp AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_satpolpp

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 25;



GRANT ALL PRIVILEGES ON view_beban_barang4_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_satpolpp FROM lap_satpolpp;
