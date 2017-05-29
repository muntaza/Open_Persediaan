DROP VIEW IF EXISTS view_daftar_penerimaan_disdik;

CREATE VIEW view_daftar_penerimaan_disdik AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_disdik, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_disdik, sub_skpd FROM lap_disdik;
