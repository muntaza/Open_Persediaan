DROP VIEW IF EXISTS view_buku_penerimaan_paringin;

CREATE VIEW view_buku_penerimaan_paringin AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringin FROM lap_paringin;
