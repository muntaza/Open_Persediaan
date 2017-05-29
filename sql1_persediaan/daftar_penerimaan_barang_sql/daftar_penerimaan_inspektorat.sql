DROP VIEW IF EXISTS view_daftar_penerimaan_inspektorat;

CREATE VIEW view_daftar_penerimaan_inspektorat AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_inspektorat, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_inspektorat, sub_skpd FROM lap_inspektorat;
