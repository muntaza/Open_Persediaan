DROP VIEW IF EXISTS view_daftar_barang_disporaparbud;

CREATE VIEW view_daftar_barang_disporaparbud AS

SELECT
*

FROM
view_daftar_barang_kabupaten

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_daftar_barang_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_disporaparbud FROM lap_disporaparbud;
