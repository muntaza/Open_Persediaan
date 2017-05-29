DROP VIEW IF EXISTS view_kartu_barang2_paringin;

CREATE VIEW view_kartu_barang2_paringin AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_paringin

WHERE
1 = 1  AND
id_skpd = 28;



GRANT ALL PRIVILEGES ON view_kartu_barang2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_paringin FROM lap_paringin;
