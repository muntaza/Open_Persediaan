DROP VIEW IF EXISTS view_persediaan_barang4_juai;

CREATE VIEW view_persediaan_barang4_juai AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_juai

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_juai FROM lap_juai;
