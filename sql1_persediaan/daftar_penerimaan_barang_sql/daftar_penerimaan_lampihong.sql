DROP VIEW IF EXISTS view_daftar_penerimaan_lampihong;

CREATE VIEW view_daftar_penerimaan_lampihong AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_lampihong, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_lampihong, sub_skpd FROM lap_lampihong;
