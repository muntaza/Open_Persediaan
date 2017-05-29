DROP VIEW IF EXISTS view_daftar_penerimaan_bappeda;

CREATE VIEW view_daftar_penerimaan_bappeda AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bappeda, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bappeda, sub_skpd FROM lap_bappeda;
