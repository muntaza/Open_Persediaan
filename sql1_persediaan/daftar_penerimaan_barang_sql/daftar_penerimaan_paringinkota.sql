DROP VIEW IF EXISTS view_daftar_penerimaan_paringinkota;

CREATE VIEW view_daftar_penerimaan_paringinkota AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_paringinkota, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_paringinkota, sub_skpd FROM lap_paringinkota;
