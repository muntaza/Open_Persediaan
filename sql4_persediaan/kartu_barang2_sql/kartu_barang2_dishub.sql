DROP VIEW IF EXISTS view_kartu_barang2_dishub;

CREATE VIEW view_kartu_barang2_dishub AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_dishub

WHERE
1 = 1  AND
id_skpd = 4;



GRANT ALL PRIVILEGES ON view_kartu_barang2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_dishub FROM lap_dishub;
