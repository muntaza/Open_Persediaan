DROP VIEW IF EXISTS view_beban_barang_rekap_kabupaten CASCADE;

CREATE VIEW view_beban_barang_rekap_kabupaten AS


SELECT
*

FROM
view_beban_barang5_awayan

UNION ALL
SELECT
*

FROM
view_beban_barang5_bappeda

UNION ALL
SELECT
*

FROM
view_beban_barang5_batumandi

UNION ALL
SELECT
*

FROM
view_beban_barang5_batupiring

UNION ALL
SELECT
*

FROM
view_beban_barang5_bkd

UNION ALL
SELECT
*

FROM
view_beban_barang5_blhk

UNION ALL
SELECT
*

FROM
view_beban_barang5_bpbd

UNION ALL
SELECT
*

FROM
view_beban_barang5_bpmpd

UNION ALL
SELECT
*

FROM
view_beban_barang5_bppakb

UNION ALL
SELECT
*

FROM
view_beban_barang5_bppkp

UNION ALL
SELECT
*

FROM
view_beban_barang5_dinkes

UNION ALL
SELECT
*

FROM
view_beban_barang5_disdik

UNION ALL
SELECT
*

FROM
view_beban_barang5_dishub

UNION ALL
SELECT
*

FROM
view_beban_barang5_disporaparbud

UNION ALL
SELECT
*

FROM
view_beban_barang5_dispu

UNION ALL
SELECT
*

FROM
view_beban_barang5_distamben

UNION ALL
SELECT
*

FROM
view_beban_barang5_dppkad

UNION ALL
SELECT
*

FROM
view_beban_barang5_dukcatpil

UNION ALL
SELECT
*

FROM
view_beban_barang5_halong

UNION ALL
SELECT
*

FROM
view_beban_barang5_inspektorat

UNION ALL
SELECT
*

FROM
view_beban_barang5_juai

UNION ALL
SELECT
*

FROM
view_beban_barang5_kehutanan

UNION ALL
SELECT
*

FROM
view_beban_barang5_kesbangpol

UNION ALL
SELECT
*

FROM
view_beban_barang5_korpri

UNION ALL
SELECT
*

FROM
view_beban_barang5_kp2tpm

UNION ALL
SELECT
*

FROM
view_beban_barang5_kpdad

UNION ALL
SELECT
*

FROM
view_beban_barang5_lampihong

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringin

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringinkota

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringinselatan

UNION ALL
SELECT
*

FROM
view_beban_barang5_paringintimur

UNION ALL
SELECT
*

FROM
view_beban_barang5_perindagkop

UNION ALL
SELECT
*

FROM
view_beban_barang5_pertanian

UNION ALL
SELECT
*

FROM
view_beban_barang5_rsud

UNION ALL
SELECT
*

FROM
view_beban_barang5_satpolpp

UNION ALL
SELECT
*

FROM
view_beban_barang5_setda

UNION ALL
SELECT
*

FROM
view_beban_barang5_setwan

UNION ALL
SELECT
*

FROM
view_beban_barang5_snt

UNION ALL
SELECT
*

FROM
view_beban_barang5_tebingtinggi;


GRANT ALL PRIVILEGES ON view_beban_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang_rekap_kabupaten FROM lap_kabupaten;
