DROP VIEW IF EXISTS view_kartu_barang_sub_skpd_rekap_kabupaten CASCADE;


CREATE VIEW view_kartu_barang_sub_skpd_rekap_kabupaten AS


SELECT
*

FROM
view_kartu_barang_sub_skpd3_awayan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bappeda

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_batumandi

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_batupiring

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_blhk

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bpmpd

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bppakb

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_bppkp

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_dinkes

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_disdik

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_dishub

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_disporaparbud

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_dispu

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_distamben

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_dppkad

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_dukcatpil

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_halong

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_inspektorat

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_juai

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_kehutanan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_korpri

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_kp2tpm

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_kpdad

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_lampihong

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_paringin

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_paringinkota

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_paringintimur

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_perindagkop

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_pertanian

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_rsud

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_satpolpp

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_setda

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_setwan

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_snt

UNION ALL
SELECT
*

FROM
view_kartu_barang_sub_skpd3_tebingtinggi;


GRANT ALL PRIVILEGES ON view_kartu_barang_sub_skpd_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_sub_skpd_rekap_kabupaten FROM lap_kabupaten;
