DROP VIEW IF EXISTS view_buku_penerimaan_kesbangpol;

CREATE VIEW view_buku_penerimaan_kesbangpol AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kesbangpol FROM lap_kesbangpol;
