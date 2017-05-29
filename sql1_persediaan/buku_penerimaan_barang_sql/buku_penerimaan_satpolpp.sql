DROP VIEW IF EXISTS view_buku_penerimaan_satpolpp;

CREATE VIEW view_buku_penerimaan_satpolpp AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_satpolpp FROM lap_satpolpp;
