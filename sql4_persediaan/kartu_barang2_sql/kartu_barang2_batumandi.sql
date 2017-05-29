DROP VIEW IF EXISTS view_kartu_barang2_batumandi;

CREATE VIEW view_kartu_barang2_batumandi AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_batumandi

WHERE
1 = 1  AND
id_skpd = 32;



GRANT ALL PRIVILEGES ON view_kartu_barang2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_batumandi FROM lap_batumandi;
