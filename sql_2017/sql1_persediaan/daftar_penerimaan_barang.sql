DROP VIEW IF EXISTS view_daftar_penerimaan_kabupaten CASCADE;


CREATE VIEW view_daftar_penerimaan_kabupaten AS

SELECT
provinsi.nama_provinsi,
kabupaten.id_provinsi,

kabupaten.nama_kabupaten,
lokasi_bidang.id_kabupaten,

lokasi_bidang.nama_lokasi_bidang,
skpd.id_lokasi_bidang,

skpd.nama_skpd,
sub_skpd.id_skpd,

sub_skpd.nama_sub_skpd,
transaksi.id_sub_skpd,

transaksi.id as kode_transaksi,
date_part('year', transaksi.tanggal) as tahun,
transaksi.tanggal,
transaksi.keterangan,

jenis_transaksi.jenis_transaksi,
transaksi.id_jenis_transaksi,

persediaan.jumlah,
persediaan.harga,

barang.nama_barang,
persediaan.id_barang as kode_barang,

satuan.satuan,
barang.id_satuan,

jenis_barang.jenis_barang,
barang.id_jenis_barang,

asal_usul.asal_usul,
masuk.id_asal_usul,

pihak_ketiga.nama_pihak_ketiga,
masuk.id_pihak_ketiga,

persediaan.harga * persediaan.jumlah as total_harga


FROM
provinsi join kabupaten ON kabupaten.id_provinsi = provinsi.id
join lokasi_bidang ON lokasi_bidang.id_kabupaten = kabupaten.id
join skpd ON skpd.id_lokasi_bidang = lokasi_bidang.id
join sub_skpd ON sub_skpd.id_skpd = skpd.id
join transaksi ON transaksi.id_sub_skpd = sub_skpd.id
join jenis_transaksi ON transaksi.id_jenis_transaksi = jenis_transaksi.id
join persediaan ON persediaan.id_transaksi = transaksi.id
join barang ON persediaan.id_barang = barang.id
join satuan ON barang.id_satuan = satuan.id
join jenis_barang ON barang.id_jenis_barang = jenis_barang.id
join masuk ON masuk.id_transaksi = transaksi.id
join asal_usul ON masuk.id_asal_usul = asal_usul.id
join pihak_ketiga ON masuk.id_pihak_ketiga = pihak_ketiga.id


WHERE
1 = 1
AND jenis_transaksi.id = 1;


GRANT ALL PRIVILEGES ON view_daftar_penerimaan_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_penerimaan_kabupaten FROM lap_kabupaten;
