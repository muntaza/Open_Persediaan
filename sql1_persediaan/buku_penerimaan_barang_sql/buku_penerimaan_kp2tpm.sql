DROP VIEW IF EXISTS view_buku_penerimaan_kp2tpm;

CREATE VIEW view_buku_penerimaan_kp2tpm AS

SELECT
*

FROM
view_buku_penerimaan_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_buku_penerimaan_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_buku_penerimaan_kp2tpm FROM lap_kp2tpm;
