DROP VIEW IF EXISTS view_persediaan_barang4_lampihong;

CREATE VIEW view_persediaan_barang4_lampihong AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_lampihong

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_lampihong FROM lap_lampihong;
