DROP VIEW IF EXISTS view_kartu_barang2_setwan;

CREATE VIEW view_kartu_barang2_setwan AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_setwan

WHERE
1 = 1  AND
id_skpd = 1;



GRANT ALL PRIVILEGES ON view_kartu_barang2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_setwan FROM lap_setwan;
