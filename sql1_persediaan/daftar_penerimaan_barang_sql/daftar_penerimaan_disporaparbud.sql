DROP VIEW IF EXISTS view_daftar_penerimaan_disporaparbud;

CREATE VIEW view_daftar_penerimaan_disporaparbud AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_disporaparbud, sub_skpd TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_disporaparbud, sub_skpd FROM lap_disporaparbud;
