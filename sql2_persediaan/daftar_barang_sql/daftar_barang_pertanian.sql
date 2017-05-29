DROP VIEW IF EXISTS view_daftar_barang_pertanian;

CREATE VIEW view_daftar_barang_pertanian AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_pertanian FROM lap_pertanian;
