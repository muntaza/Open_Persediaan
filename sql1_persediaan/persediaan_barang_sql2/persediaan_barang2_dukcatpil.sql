DROP VIEW IF EXISTS view_persediaan_barang2_dukcatpil;

CREATE VIEW view_persediaan_barang2_dukcatpil AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_dukcatpil FROM lap_dukcatpil;
