DROP VIEW IF EXISTS view_kartu_barang2_batupiring;

CREATE VIEW view_kartu_barang2_batupiring AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_batupiring

WHERE
1 = 1  AND
id_skpd = 37;



GRANT ALL PRIVILEGES ON view_kartu_barang2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_batupiring FROM lap_batupiring;
