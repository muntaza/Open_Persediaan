DROP VIEW IF EXISTS view_daftar_barang_kabupaten CASCADE;


CREATE VIEW view_daftar_barang_kabupaten AS

SELECT
barang.nama_barang,
barang.id as kode_barang,

satuan.satuan,
barang.id_satuan,

jenis_barang.jenis_barang,
barang.id_jenis_barang


FROM
barang join satuan ON barang.id_satuan = satuan.id
join jenis_barang ON barang.id_jenis_barang = jenis_barang.id


WHERE
1 = 1;


GRANT ALL PRIVILEGES ON view_daftar_barang_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_barang_kabupaten FROM lap_kabupaten;
