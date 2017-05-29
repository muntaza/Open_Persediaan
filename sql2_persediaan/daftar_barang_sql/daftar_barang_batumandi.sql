DROP VIEW IF EXISTS view_daftar_barang_batumandi;

CREATE VIEW view_daftar_barang_batumandi AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_batumandi FROM lap_batumandi;
