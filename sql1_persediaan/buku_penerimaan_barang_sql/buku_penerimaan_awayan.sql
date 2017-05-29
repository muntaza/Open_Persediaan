DROP VIEW IF EXISTS view_buku_penerimaan_awayan;

CREATE VIEW view_buku_penerimaan_awayan AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_awayan FROM lap_awayan;
