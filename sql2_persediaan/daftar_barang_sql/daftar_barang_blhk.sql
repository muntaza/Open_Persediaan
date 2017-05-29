DROP VIEW IF EXISTS view_daftar_barang_blhk;

CREATE VIEW view_daftar_barang_blhk AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_blhk FROM lap_blhk;
