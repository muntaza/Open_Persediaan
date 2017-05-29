DROP VIEW IF EXISTS view_buku_penerimaan_dishub;

CREATE VIEW view_buku_penerimaan_dishub AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_dishub FROM lap_dishub;
