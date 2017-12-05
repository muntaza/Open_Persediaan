DROP VIEW IF EXISTS view_persediaan_barang4_setwan;

CREATE VIEW view_persediaan_barang4_setwan AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_setwan

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_setwan FROM lap_setwan;
