DROP VIEW IF EXISTS view_daftar_penerimaan_kehutanan;

CREATE VIEW view_daftar_penerimaan_kehutanan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kehutanan, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kehutanan, sub_skpd FROM lap_kehutanan;
