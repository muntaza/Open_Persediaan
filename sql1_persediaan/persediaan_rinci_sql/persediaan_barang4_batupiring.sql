DROP VIEW IF EXISTS view_persediaan_barang4_batupiring;

CREATE VIEW view_persediaan_barang4_batupiring AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_batupiring

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_batupiring FROM lap_batupiring;
