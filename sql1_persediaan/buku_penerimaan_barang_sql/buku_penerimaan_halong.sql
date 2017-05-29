DROP VIEW IF EXISTS view_buku_penerimaan_halong;

CREATE VIEW view_buku_penerimaan_halong AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_halong FROM lap_halong;
