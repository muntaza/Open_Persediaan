DROP VIEW IF EXISTS view_daftar_barang_paringinkota;

CREATE VIEW view_daftar_barang_paringinkota AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringinkota FROM lap_paringinkota;
