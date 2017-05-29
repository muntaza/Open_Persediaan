DROP VIEW IF EXISTS view_daftar_barang_dppkad;

CREATE VIEW view_daftar_barang_dppkad AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dppkad FROM lap_dppkad;
