DROP VIEW IF EXISTS view_daftar_barang_setwan;

CREATE VIEW view_daftar_barang_setwan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_setwan FROM lap_setwan;
