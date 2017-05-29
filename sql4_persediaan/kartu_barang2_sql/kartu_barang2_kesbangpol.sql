DROP VIEW IF EXISTS view_kartu_barang2_kesbangpol;

CREATE VIEW view_kartu_barang2_kesbangpol AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_kesbangpol

WHERE
1 = 1  AND
id_skpd = 24;



GRANT ALL PRIVILEGES ON view_kartu_barang2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_kesbangpol FROM lap_kesbangpol;
