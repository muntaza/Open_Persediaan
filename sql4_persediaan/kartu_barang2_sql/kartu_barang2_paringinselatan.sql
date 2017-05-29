DROP VIEW IF EXISTS view_kartu_barang2_paringinselatan;

CREATE VIEW view_kartu_barang2_paringinselatan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_paringinselatan

WHERE
1 = 1  AND
id_skpd = 36;



GRANT ALL PRIVILEGES ON view_kartu_barang2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_paringinselatan FROM lap_paringinselatan;
