DROP VIEW IF EXISTS view_persediaan_barang2_disporaparbud;

CREATE VIEW view_persediaan_barang2_disporaparbud AS

SELECT
*,
sum(jumlah) OVER (PARTITION BY kode_barang ORDER BY serial, tanggal, id_persediaan) as pra_saldo


FROM
view_persediaan_barang_disporaparbud

WHERE
1 = 1  AND
id_skpd = 23;



GRANT ALL PRIVILEGES ON view_persediaan_barang2_disporaparbud TO lap_disporaparbud;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang2_disporaparbud FROM lap_disporaparbud;
