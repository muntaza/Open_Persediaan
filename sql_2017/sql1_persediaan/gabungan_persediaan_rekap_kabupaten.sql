DROP VIEW IF EXISTS view_persediaan_barang_rekap_kabupaten CASCADE;
CREATE VIEW view_persediaan_barang_rekap_kabupaten AS

SELECT
*

FROM
view_persediaan_barang5_awayan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bappeda

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_batumandi

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bkd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bkppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bpbd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_bppd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dinkes

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_disdik

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dishub

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_disnakertrans

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dko

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dkukmp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dlh

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpkp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpmd

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpmptsp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dppkb

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpppa

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dpupr

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_dukcatpil

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_halong

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_inspektorat

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_juai

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kearsipan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kesbangpol

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_kominfo

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_lampihong

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringin

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_paringinselatan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_pariwisata

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perdagangan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perikanan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_perpustakaan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_pertanian

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_satpolpp

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_setda

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_setwan

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_sosial

UNION ALL
SELECT
*

FROM
view_persediaan_barang5_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_persediaan_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_persediaan_barang_rekap_kabupaten FROM lap_kabupaten;
