DROP VIEW IF EXISTS view_beban_barang4_paringinkota;

CREATE VIEW view_beban_barang4_paringinkota AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringinkota

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 29;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringinkota FROM lap_paringinkota;
