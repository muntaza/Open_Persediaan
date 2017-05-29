DROP VIEW IF EXISTS view_beban_barang4_dishub;

CREATE VIEW view_beban_barang4_dishub AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dishub

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_beban_barang4_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dishub FROM lap_dishub;
