DROP VIEW IF EXISTS view_beban_barang4_bappeda;

CREATE VIEW view_beban_barang4_bappeda AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bappeda

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_beban_barang4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bappeda FROM lap_bappeda;
