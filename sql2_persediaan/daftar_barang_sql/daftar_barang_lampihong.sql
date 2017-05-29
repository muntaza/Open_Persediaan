DROP VIEW IF EXISTS view_daftar_barang_lampihong;

CREATE VIEW view_daftar_barang_lampihong AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_lampihong FROM lap_lampihong;
