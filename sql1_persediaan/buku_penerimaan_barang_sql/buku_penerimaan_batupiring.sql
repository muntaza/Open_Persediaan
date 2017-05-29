DROP VIEW IF EXISTS view_buku_penerimaan_batupiring;

CREATE VIEW view_buku_penerimaan_batupiring AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_batupiring FROM lap_batupiring;
