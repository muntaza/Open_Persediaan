DROP VIEW IF EXISTS view_daftar_penerimaan_setwan;

CREATE VIEW view_daftar_penerimaan_setwan AS

SELECT
*

FROM
view_daftar_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_penerimaan_setwan, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_setwan, sub_skpd FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, view_tahun, asal_usul TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_tahun, asal_usul FROM lap_setwan;
