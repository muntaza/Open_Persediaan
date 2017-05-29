DROP VIEW IF EXISTS view_daftar_barang_bkd;

CREATE VIEW view_daftar_barang_bkd AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bkd FROM lap_bkd;
