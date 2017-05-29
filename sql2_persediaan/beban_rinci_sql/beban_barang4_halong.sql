DROP VIEW IF EXISTS view_beban_barang4_halong;

CREATE VIEW view_beban_barang4_halong AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_halong

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 35;



GRANT ALL PRIVILEGES ON view_beban_barang4_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_halong FROM lap_halong;
