DROP VIEW IF EXISTS view_persediaan_barang2_awayan;

CREATE VIEW view_persediaan_barang2_awayan AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_awayan

WHERE
1 = 1  AND
id_skpd = 34;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_awayan FROM lap_awayan;
