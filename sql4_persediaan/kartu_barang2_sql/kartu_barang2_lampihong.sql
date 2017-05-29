DROP VIEW IF EXISTS view_kartu_barang2_lampihong;

CREATE VIEW view_kartu_barang2_lampihong AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_lampihong

WHERE
1 = 1  AND
id_skpd = 31;



GRANT ALL PRIVILEGES ON view_kartu_barang2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_lampihong FROM lap_lampihong;
