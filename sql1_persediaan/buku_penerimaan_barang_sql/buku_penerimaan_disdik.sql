DROP VIEW IF EXISTS view_buku_penerimaan_disdik;

CREATE VIEW view_buku_penerimaan_disdik AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_disdik FROM lap_disdik;
