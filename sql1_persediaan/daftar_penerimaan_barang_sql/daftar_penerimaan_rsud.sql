DROP VIEW IF EXISTS view_daftar_penerimaan_rsud;

CREATE VIEW view_daftar_penerimaan_rsud AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_rsud, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_rsud, sub_skpd FROM lap_rsud;
