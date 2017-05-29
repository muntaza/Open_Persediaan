DROP VIEW IF EXISTS view_daftar_penerimaan_kesbangpol;

CREATE VIEW view_daftar_penerimaan_kesbangpol AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kesbangpol, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kesbangpol, sub_skpd FROM lap_kesbangpol;
