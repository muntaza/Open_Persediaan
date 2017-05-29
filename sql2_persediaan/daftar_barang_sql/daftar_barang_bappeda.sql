DROP VIEW IF EXISTS view_daftar_barang_bappeda;

CREATE VIEW view_daftar_barang_bappeda AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bappeda FROM lap_bappeda;
