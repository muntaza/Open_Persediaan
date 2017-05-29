DROP VIEW IF EXISTS view_buku_penerimaan_paringintimur;

CREATE VIEW view_buku_penerimaan_paringintimur AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_paringintimur FROM lap_paringintimur;
