DROP VIEW IF EXISTS view_beban_barang_rekap_kabupaten CASCADE;
CREATE VIEW view_beban_barang_rekap_kabupaten AS


;
GRANT ALL PRIVILEGES ON view_beban_barang_rekap_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_barang_rekap_kabupaten FROM lap_kabupaten;
