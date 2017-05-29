DROP VIEW IF EXISTS view_buku_penerimaan_bkd;

CREATE VIEW view_buku_penerimaan_bkd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bkd FROM lap_bkd;
