DROP VIEW IF EXISTS view_beban_barang4_pertanian;

CREATE VIEW view_beban_barang4_pertanian AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_pertanian

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 13;



GRANT ALL PRIVILEGES ON view_beban_barang4_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_pertanian FROM lap_pertanian;
