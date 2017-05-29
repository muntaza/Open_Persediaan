DROP VIEW IF EXISTS view_kartu_barang2_dukcatpil;

CREATE VIEW view_kartu_barang2_dukcatpil AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_dukcatpil

WHERE
1 = 1  AND
id_skpd = 12;



GRANT ALL PRIVILEGES ON view_kartu_barang2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_dukcatpil FROM lap_dukcatpil;
