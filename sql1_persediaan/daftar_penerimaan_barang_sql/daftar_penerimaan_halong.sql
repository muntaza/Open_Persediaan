DROP VIEW IF EXISTS view_daftar_penerimaan_halong;

CREATE VIEW view_daftar_penerimaan_halong AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_halong, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_halong, sub_skpd FROM lap_halong;
