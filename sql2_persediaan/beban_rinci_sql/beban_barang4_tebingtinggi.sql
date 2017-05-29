DROP VIEW IF EXISTS view_beban_barang4_tebingtinggi;

CREATE VIEW view_beban_barang4_tebingtinggi AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_tebingtinggi

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_beban_barang4_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_tebingtinggi FROM lap_tebingtinggi;
