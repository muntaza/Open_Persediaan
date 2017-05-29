DROP VIEW IF EXISTS view_buku_penerimaan_inspektorat;

CREATE VIEW view_buku_penerimaan_inspektorat AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_inspektorat FROM lap_inspektorat;
