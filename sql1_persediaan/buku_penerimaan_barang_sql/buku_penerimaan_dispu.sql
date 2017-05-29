DROP VIEW IF EXISTS view_buku_penerimaan_dispu;

CREATE VIEW view_buku_penerimaan_dispu AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dispu TO lap_dispu;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dispu FROM lap_dispu;
