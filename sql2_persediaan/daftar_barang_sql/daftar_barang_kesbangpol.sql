DROP VIEW IF EXISTS view_daftar_barang_kesbangpol;

CREATE VIEW view_daftar_barang_kesbangpol AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kesbangpol FROM lap_kesbangpol;
