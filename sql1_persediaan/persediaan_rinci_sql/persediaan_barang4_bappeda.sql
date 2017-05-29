DROP VIEW IF EXISTS view_persediaan_barang4_bappeda;

CREATE VIEW view_persediaan_barang4_bappeda AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_bappeda

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_bappeda FROM lap_bappeda;
