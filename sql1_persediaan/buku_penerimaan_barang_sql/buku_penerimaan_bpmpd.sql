DROP VIEW IF EXISTS view_buku_penerimaan_bpmpd;

CREATE VIEW view_buku_penerimaan_bpmpd AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bpmpd FROM lap_bpmpd;
