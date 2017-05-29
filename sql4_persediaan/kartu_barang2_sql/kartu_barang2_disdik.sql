DROP VIEW IF EXISTS view_kartu_barang2_disdik;

CREATE VIEW view_kartu_barang2_disdik AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_disdik

WHERE
1 = 1  AND
id_skpd = 7;



GRANT ALL PRIVILEGES ON view_kartu_barang2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_disdik FROM lap_disdik;
