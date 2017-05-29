DROP VIEW IF EXISTS view_buku_penerimaan_kpdad;

CREATE VIEW view_buku_penerimaan_kpdad AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kpdad FROM lap_kpdad;
