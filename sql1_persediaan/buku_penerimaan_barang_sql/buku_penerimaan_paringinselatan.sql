DROP VIEW IF EXISTS view_buku_penerimaan_paringinselatan;

CREATE VIEW view_buku_penerimaan_paringinselatan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringinselatan FROM lap_paringinselatan;
