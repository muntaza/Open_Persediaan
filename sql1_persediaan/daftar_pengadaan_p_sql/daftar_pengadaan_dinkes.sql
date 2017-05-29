DROP VIEW IF EXISTS view_daftar_pengadaan_dinkes;

CREATE VIEW view_daftar_pengadaan_dinkes AS

SELECT
*

FROM
view_daftar_pengadaan_p_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, jenis_barang, asal_usul, view_tahun, jenis_keluar FROM lap_dinkes;
