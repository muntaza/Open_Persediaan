DROP VIEW IF EXISTS view_daftar_penerimaan_tebingtinggi;

CREATE VIEW view_daftar_penerimaan_tebingtinggi AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_tebingtinggi, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_tebingtinggi, sub_skpd FROM lap_tebingtinggi;
