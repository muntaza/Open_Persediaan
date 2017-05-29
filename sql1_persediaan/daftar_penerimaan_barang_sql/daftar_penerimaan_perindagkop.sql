DROP VIEW IF EXISTS view_daftar_penerimaan_perindagkop;

CREATE VIEW view_daftar_penerimaan_perindagkop AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_perindagkop, sub_skpd TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_perindagkop, sub_skpd FROM lap_perindagkop;
