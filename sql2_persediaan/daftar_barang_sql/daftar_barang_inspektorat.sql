DROP VIEW IF EXISTS view_daftar_barang_inspektorat;

CREATE VIEW view_daftar_barang_inspektorat AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_inspektorat FROM lap_inspektorat;
