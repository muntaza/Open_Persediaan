DROP VIEW IF EXISTS view_beban_barang4_dukcatpil;

CREATE VIEW view_beban_barang4_dukcatpil AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_dukcatpil

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_beban_barang4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_dukcatpil FROM lap_dukcatpil;
