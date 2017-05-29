DROP VIEW IF EXISTS view_beban_barang4_rsud;

CREATE VIEW view_beban_barang4_rsud AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_rsud

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 6;



GRANT ALL PRIVILEGES ON view_beban_barang4_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_rsud FROM lap_rsud;
