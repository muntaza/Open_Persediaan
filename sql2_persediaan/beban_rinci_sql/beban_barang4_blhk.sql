DROP VIEW IF EXISTS view_beban_barang4_blhk;

CREATE VIEW view_beban_barang4_blhk AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_blhk

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 22;



GRANT ALL PRIVILEGES ON view_beban_barang4_blhk TO lap_blhk;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_blhk FROM lap_blhk;
