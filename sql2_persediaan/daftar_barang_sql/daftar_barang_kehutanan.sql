DROP VIEW IF EXISTS view_daftar_barang_kehutanan;

CREATE VIEW view_daftar_barang_kehutanan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kehutanan FROM lap_kehutanan;
