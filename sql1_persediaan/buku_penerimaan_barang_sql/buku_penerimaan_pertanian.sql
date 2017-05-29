DROP VIEW IF EXISTS view_buku_penerimaan_pertanian;

CREATE VIEW view_buku_penerimaan_pertanian AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_pertanian FROM lap_pertanian;
