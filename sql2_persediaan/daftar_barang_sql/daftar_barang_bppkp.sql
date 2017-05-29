DROP VIEW IF EXISTS view_daftar_barang_bppkp;

CREATE VIEW view_daftar_barang_bppkp AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_bppkp TO lap_bppkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_bppkp FROM lap_bppkp;
