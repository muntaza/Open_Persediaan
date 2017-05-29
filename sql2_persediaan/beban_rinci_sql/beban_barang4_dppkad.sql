DROP VIEW IF EXISTS view_beban_barang4_dppkad;

CREATE VIEW view_beban_barang4_dppkad AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dppkad

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 19;



GRANT ALL PRIVILEGES ON view_beban_barang4_dppkad TO lap_dppkad;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dppkad FROM lap_dppkad;
