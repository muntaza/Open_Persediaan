DROP VIEW IF EXISTS view_daftar_barang_rsud;

CREATE VIEW view_daftar_barang_rsud AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_rsud FROM lap_rsud;
