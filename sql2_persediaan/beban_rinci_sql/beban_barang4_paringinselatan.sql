DROP VIEW IF EXISTS view_beban_barang4_paringinselatan;

CREATE VIEW view_beban_barang4_paringinselatan AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_paringinselatan

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_beban_barang4_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_paringinselatan FROM lap_paringinselatan;
