DROP VIEW IF EXISTS view_daftar_penerimaan_snt;

CREATE VIEW view_daftar_penerimaan_snt AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_snt, sub_skpd TO lap_snt;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_snt, sub_skpd FROM lap_snt;
