DROP VIEW IF EXISTS view_daftar_penerimaan_batupiring;

CREATE VIEW view_daftar_penerimaan_batupiring AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_batupiring, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_batupiring, sub_skpd FROM lap_batupiring;
