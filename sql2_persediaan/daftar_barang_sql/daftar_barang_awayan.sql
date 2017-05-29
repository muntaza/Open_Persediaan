DROP VIEW IF EXISTS view_daftar_barang_awayan;

CREATE VIEW view_daftar_barang_awayan AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_awayan FROM lap_awayan;
