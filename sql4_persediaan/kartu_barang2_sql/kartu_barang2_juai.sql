DROP VIEW IF EXISTS view_kartu_barang2_juai;

CREATE VIEW view_kartu_barang2_juai AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_juai

WHERE
1 = 1  AND
id_skpd = 33;



GRANT ALL PRIVILEGES ON view_kartu_barang2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_juai FROM lap_juai;
