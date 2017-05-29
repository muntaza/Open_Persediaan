DROP VIEW IF EXISTS view_buku_penerimaan_bppakb;

CREATE VIEW view_buku_penerimaan_bppakb AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bppakb TO lap_bppakb;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bppakb FROM lap_bppakb;
