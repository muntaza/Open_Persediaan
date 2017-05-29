DROP VIEW IF EXISTS view_daftar_barang_korpri;

CREATE VIEW view_daftar_barang_korpri AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_korpri FROM lap_korpri;
