DROP VIEW IF EXISTS view_daftar_barang_distamben;

CREATE VIEW view_daftar_barang_distamben AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_distamben FROM lap_distamben;
