DROP VIEW IF EXISTS view_daftar_barang_bppakb;

CREATE VIEW view_daftar_barang_bppakb AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bppakb FROM lap_bppakb;
