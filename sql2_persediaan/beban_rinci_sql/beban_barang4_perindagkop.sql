DROP VIEW IF EXISTS view_beban_barang4_perindagkop;

CREATE VIEW view_beban_barang4_perindagkop AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_perindagkop

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 16;



GRANT ALL PRIVILEGES ON view_beban_barang4_perindagkop TO lap_perindagkop;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_perindagkop FROM lap_perindagkop;
