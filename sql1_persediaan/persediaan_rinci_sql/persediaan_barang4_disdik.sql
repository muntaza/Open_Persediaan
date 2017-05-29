DROP VIEW IF EXISTS view_persediaan_barang4_disdik;

CREATE VIEW view_persediaan_barang4_disdik AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_disdik

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_disdik FROM lap_disdik;
