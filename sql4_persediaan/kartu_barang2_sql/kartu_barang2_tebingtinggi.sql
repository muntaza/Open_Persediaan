DROP VIEW IF EXISTS view_kartu_barang2_tebingtinggi;

CREATE VIEW view_kartu_barang2_tebingtinggi AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_tebingtinggi

WHERE
1 = 1  AND
id_skpd = 38;



GRANT ALL PRIVILEGES ON view_kartu_barang2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_tebingtinggi FROM lap_tebingtinggi;
