DROP VIEW IF EXISTS view_kartu_barang2_setda;

CREATE VIEW view_kartu_barang2_setda AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_setda

WHERE
1 = 1  AND
id_skpd = 2;



GRANT ALL PRIVILEGES ON view_kartu_barang2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_setda FROM lap_setda;
