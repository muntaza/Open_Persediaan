DROP VIEW IF EXISTS view_buku_penerimaan_blhk;

CREATE VIEW view_buku_penerimaan_blhk AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_blhk FROM lap_blhk;
