DROP VIEW IF EXISTS view_daftar_barang_disdik;

CREATE VIEW view_daftar_barang_disdik AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_disdik FROM lap_disdik;
