DROP VIEW IF EXISTS view_kartu_barang2_kehutanan;

CREATE VIEW view_kartu_barang2_kehutanan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_kehutanan

WHERE
1 = 1  AND
id_skpd = 14;



GRANT ALL PRIVILEGES ON view_kartu_barang2_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_kehutanan FROM lap_kehutanan;
