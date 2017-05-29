DROP VIEW IF EXISTS view_daftar_pengadaan_awayan;

CREATE VIEW view_daftar_pengadaan_awayan AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_awayan;
