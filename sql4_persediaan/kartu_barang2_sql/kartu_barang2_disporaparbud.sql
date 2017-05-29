DROP VIEW IF EXISTS view_kartu_barang2_disporaparbud;

CREATE VIEW view_kartu_barang2_disporaparbud AS

SELECT
*,
sum(pra_saldo) OVER (PARTITION BY kode_barang ORDER BY tanggal, id_persediaan) as saldo


FROM
view_kartu_barang_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_kartu_barang2_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang2_disporaparbud FROM lap_disporaparbud;
