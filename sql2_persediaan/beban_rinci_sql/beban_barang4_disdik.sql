DROP VIEW IF EXISTS view_beban_barang4_disdik;

CREATE VIEW view_beban_barang4_disdik AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_disdik

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_beban_barang4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_disdik FROM lap_disdik;
