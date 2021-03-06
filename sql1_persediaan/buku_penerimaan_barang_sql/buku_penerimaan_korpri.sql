DROP VIEW IF EXISTS view_buku_penerimaan_korpri;

CREATE VIEW view_buku_penerimaan_korpri AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_korpri FROM lap_korpri;
