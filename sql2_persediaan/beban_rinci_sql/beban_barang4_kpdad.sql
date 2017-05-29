DROP VIEW IF EXISTS view_beban_barang4_kpdad;

CREATE VIEW view_beban_barang4_kpdad AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_kpdad

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 8;



GRANT ALL PRIVILEGES ON view_beban_barang4_kpdad TO lap_kpdad;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_kpdad FROM lap_kpdad;
