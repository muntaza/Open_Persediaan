DROP VIEW IF EXISTS view_kartu_barang2_bappeda;

CREATE VIEW view_kartu_barang2_bappeda AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_bappeda

WHERE
1 = 1  AND
id_skpd = 21;



GRANT ALL PRIVILEGES ON view_kartu_barang2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_bappeda FROM lap_bappeda;
