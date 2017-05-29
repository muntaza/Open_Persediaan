DROP VIEW IF EXISTS view_persediaan_barang4_dukcatpil;

CREATE VIEW view_persediaan_barang4_dukcatpil AS

SELECT
*,
saldo * harga AS jumlah_harga

FROM
view_persediaan_barang3_dukcatpil

WHERE
1 = 1  AND
saldo > 0 AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang4_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang4_dukcatpil FROM lap_dukcatpil;
