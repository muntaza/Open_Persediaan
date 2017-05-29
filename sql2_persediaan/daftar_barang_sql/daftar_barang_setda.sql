DROP VIEW IF EXISTS view_daftar_barang_setda;

CREATE VIEW view_daftar_barang_setda AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_setda FROM lap_setda;
