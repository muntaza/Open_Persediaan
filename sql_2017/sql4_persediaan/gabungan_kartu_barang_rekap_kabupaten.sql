DROP VIEW IF EXISTS view_kartu_barang_rekap_kabupaten CASCADE;
CREATE VIEW view_kartu_barang_rekap_kabupaten AS

SELECT
*

FROM
view_kartu_barang3_awayan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bappeda

UNION ALL
SELECT
*

FROM
view_kartu_barang3_batumandi

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bkd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bkppd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bpbd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_bppd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dinkes

UNION ALL
SELECT
*

FROM
view_kartu_barang3_disdik

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dishub

UNION ALL
SELECT
*

FROM
view_kartu_barang3_disnakertrans

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dko

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dkp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dkukmp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dlh

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dpkp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dpmd

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dpmptsp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dppkb

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dpppa

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dpupr

UNION ALL
SELECT
*

FROM
view_kartu_barang3_dukcatpil

UNION ALL
SELECT
*

FROM
view_kartu_barang3_halong

UNION ALL
SELECT
*

FROM
view_kartu_barang3_inspektorat

UNION ALL
SELECT
*

FROM
view_kartu_barang3_juai

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kearsipan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kesbangpol

UNION ALL
SELECT
*

FROM
view_kartu_barang3_kominfo

UNION ALL
SELECT
*

FROM
view_kartu_barang3_lampihong

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringin

UNION ALL
SELECT
*

FROM
view_kartu_barang3_paringinselatan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_pariwisata

UNION ALL
SELECT
*

FROM
view_kartu_barang3_perdagangan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_perikanan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_perpustakaan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_pertanian

UNION ALL
SELECT
*

FROM
view_kartu_barang3_satpolpp

UNION ALL
SELECT
*

FROM
view_kartu_barang3_setda

UNION ALL
SELECT
*

FROM
view_kartu_barang3_setwan

UNION ALL
SELECT
*

FROM
view_kartu_barang3_sosial

UNION ALL
SELECT
*

FROM
view_kartu_barang3_tebingtinggi

;
GRANT ALL PRIVILEGES ON view_kartu_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kartu_barang_rekap_kabupaten FROM lap_kabupaten;
