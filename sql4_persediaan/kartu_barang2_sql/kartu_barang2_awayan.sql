DROP VIEW IF EXISTS view_kartu_barang2_awayan;

CREATE VIEW view_kartu_barang2_awayan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_kartu_barang2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_awayan FROM lap_awayan;
