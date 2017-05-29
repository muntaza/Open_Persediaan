DROP VIEW IF EXISTS view_daftar_barang_paringintimur;

CREATE VIEW view_daftar_barang_paringintimur AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_paringintimur FROM lap_paringintimur;
