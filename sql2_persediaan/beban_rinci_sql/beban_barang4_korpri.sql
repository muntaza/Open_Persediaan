DROP VIEW IF EXISTS view_beban_barang4_korpri;

CREATE VIEW view_beban_barang4_korpri AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_korpri

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 27;



GRANT ALL PRIVILEGES ON view_beban_barang4_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_korpri FROM lap_korpri;
