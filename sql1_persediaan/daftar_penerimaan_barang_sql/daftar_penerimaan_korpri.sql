DROP VIEW IF EXISTS view_daftar_penerimaan_korpri;

CREATE VIEW view_daftar_penerimaan_korpri AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_korpri, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_korpri, sub_skpd FROM lap_korpri;
