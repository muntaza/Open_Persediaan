DROP VIEW IF EXISTS view_daftar_pengeluaran_kp2tpm;

CREATE VIEW view_daftar_pengeluaran_kp2tpm AS

SELECT
*

FROM
view_daftar_pengeluaran_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_daftar_pengeluaran_kp2tpm TO lap_kp2tpm;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengeluaran_kp2tpm FROM lap_kp2tpm;
