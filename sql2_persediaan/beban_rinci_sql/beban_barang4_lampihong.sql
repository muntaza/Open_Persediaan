DROP VIEW IF EXISTS view_beban_barang4_lampihong;

CREATE VIEW view_beban_barang4_lampihong AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_lampihong

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_beban_barang4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_lampihong FROM lap_lampihong;
