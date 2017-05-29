DROP VIEW IF EXISTS view_buku_penerimaan_bappeda;

CREATE VIEW view_buku_penerimaan_bappeda AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_bappeda FROM lap_bappeda;
