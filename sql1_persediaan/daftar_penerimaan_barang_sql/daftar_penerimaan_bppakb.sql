DROP VIEW IF EXISTS view_daftar_penerimaan_bppakb;

CREATE VIEW view_daftar_penerimaan_bppakb AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_bppakb, sub_skpd TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_bppakb, sub_skpd FROM lap_bppakb;
