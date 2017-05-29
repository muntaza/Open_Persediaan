DROP VIEW IF EXISTS view_buku_penerimaan_kehutanan;

CREATE VIEW view_buku_penerimaan_kehutanan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kehutanan FROM lap_kehutanan;
