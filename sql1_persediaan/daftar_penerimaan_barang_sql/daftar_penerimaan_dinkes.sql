DROP VIEW IF EXISTS view_daftar_penerimaan_dinkes;

CREATE VIEW view_daftar_penerimaan_dinkes AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_dinkes, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_dinkes, sub_skpd FROM lap_dinkes;
