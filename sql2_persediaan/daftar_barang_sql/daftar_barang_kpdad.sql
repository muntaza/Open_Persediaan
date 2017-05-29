DROP VIEW IF EXISTS view_daftar_barang_kpdad;

CREATE VIEW view_daftar_barang_kpdad AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kpdad FROM lap_kpdad;
