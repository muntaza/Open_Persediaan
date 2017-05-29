DROP VIEW IF EXISTS view_beban_barang4_setwan;

CREATE VIEW view_beban_barang4_setwan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_setwan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_beban_barang4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_setwan FROM lap_setwan;
