DROP VIEW IF EXISTS view_daftar_barang_batupiring;

CREATE VIEW view_daftar_barang_batupiring AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_batupiring FROM lap_batupiring;
