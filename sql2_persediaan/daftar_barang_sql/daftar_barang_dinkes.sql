DROP VIEW IF EXISTS view_daftar_barang_dinkes;

CREATE VIEW view_daftar_barang_dinkes AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_dinkes FROM lap_dinkes;
