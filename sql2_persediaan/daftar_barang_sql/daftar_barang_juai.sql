DROP VIEW IF EXISTS view_daftar_barang_juai;

CREATE VIEW view_daftar_barang_juai AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_juai FROM lap_juai;
