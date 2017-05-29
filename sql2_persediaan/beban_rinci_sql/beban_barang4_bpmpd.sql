DROP VIEW IF EXISTS view_beban_barang4_bpmpd;

CREATE VIEW view_beban_barang4_bpmpd AS

SELECT
*,
beban * harga AS jumlah_harga

FROM
view_beban_barang3_bpmpd

WHERE
1 = 1  AND
beban > 0 AND
id_skpd = 10;



GRANT ALL PRIVILEGES ON view_beban_barang4_bpmpd TO lap_bpmpd;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang4_bpmpd FROM lap_bpmpd;
