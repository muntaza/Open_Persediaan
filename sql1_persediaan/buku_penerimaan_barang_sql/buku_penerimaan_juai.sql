DROP VIEW IF EXISTS view_buku_penerimaan_juai;

CREATE VIEW view_buku_penerimaan_juai AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_juai FROM lap_juai;
