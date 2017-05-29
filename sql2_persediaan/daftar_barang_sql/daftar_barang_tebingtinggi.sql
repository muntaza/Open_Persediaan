DROP VIEW IF EXISTS view_daftar_barang_tebingtinggi;

CREATE VIEW view_daftar_barang_tebingtinggi AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_tebingtinggi FROM lap_tebingtinggi;
