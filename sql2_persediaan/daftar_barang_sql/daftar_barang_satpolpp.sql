DROP VIEW IF EXISTS view_daftar_barang_satpolpp;

CREATE VIEW view_daftar_barang_satpolpp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_satpolpp FROM lap_satpolpp;
