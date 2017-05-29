DROP VIEW IF EXISTS view_daftar_barang_halong;

CREATE VIEW view_daftar_barang_halong AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_halong FROM lap_halong;
