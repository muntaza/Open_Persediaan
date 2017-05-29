DROP VIEW IF EXISTS view_kartu_barang2_bkd;

CREATE VIEW view_kartu_barang2_bkd AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bkd

WHERE
1 = 1  AND
id_skpd = 26;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bkd FROM lap_bkd;
