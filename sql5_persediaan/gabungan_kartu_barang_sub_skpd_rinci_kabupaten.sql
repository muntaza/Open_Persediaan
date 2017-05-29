DROP VIEW IF EXISTS view_kartu_barang_sub_skpd_rinci_kabupaten CASCADE;


CREATE VIEW view_kartu_barang_sub_skpd_rinci_kabupaten AS


SELECT
*

FROM
view_kartu_barang_sub_skpd2_awayan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bappeda

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_batumandi

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_batupiring

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_blhk

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bpmpd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bppakb

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_bppkp

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_dinkes

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_disdik

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_dishub

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_disporaparbud

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_dispu

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_distamben

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_dppkad

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_dukcatpil

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_halong

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_inspektorat

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_juai

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_kehutanan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_korpri

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_kp2tpm

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_kpdad

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_lampihong

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_paringin

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_paringinkota

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_paringintimur

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_perindagkop

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_pertanian

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_rsud

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_satpolpp

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_setda

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_setwan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_snt

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd2_tebingtinggi;

GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd_rinci_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd_rinci_kabupaten FROM lap_kabupaten;
