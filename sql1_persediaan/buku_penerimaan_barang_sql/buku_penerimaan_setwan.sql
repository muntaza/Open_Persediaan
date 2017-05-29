DROP VIEW IF EXISTS view_buku_penerimaan_setwan;

CREATE VIEW view_buku_penerimaan_setwan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_setwan FROM lap_setwan;
