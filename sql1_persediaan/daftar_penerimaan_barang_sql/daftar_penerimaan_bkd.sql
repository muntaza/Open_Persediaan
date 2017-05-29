DROP VIEW IF EXISTS view_daftar_penerimaan_bkd;

CREATE VIEW view_daftar_penerimaan_bkd AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bkd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bkd, sub_skpd FROM lap_bkd;
