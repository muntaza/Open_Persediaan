DROP VIEW IF EXISTS view_daftar_barang_dishub;

CREATE VIEW view_daftar_barang_dishub AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dishub FROM lap_dishub;
