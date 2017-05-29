DROP VIEW IF EXISTS view_daftar_penerimaan_dispu;

CREATE VIEW view_daftar_penerimaan_dispu AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dispu, sub_skpd TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dispu, sub_skpd FROM lap_dispu;
