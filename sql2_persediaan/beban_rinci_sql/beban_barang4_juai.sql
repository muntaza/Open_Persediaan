DROP VIEW IF EXISTS view_beban_barang4_juai;

CREATE VIEW view_beban_barang4_juai AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_juai

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_beban_barang4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_juai FROM lap_juai;
