DROP VIEW IF EXISTS view_beban_barang4_disporaparbud;

CREATE VIEW view_beban_barang4_disporaparbud AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_disporaparbud

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_beban_barang4_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_disporaparbud FROM lap_disporaparbud;
