from django.db import models

# Data Provinsi sampai Sub SKPD

class Provinsi(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    kode_provinsi = models.CharField("Kode Provinsi", max_length=20,
                    db_column="kode_provinsi")
    nama_provinsi = models.CharField("Nama Provinsi", max_length=200,
                    db_column="nama_provinsi")

    class Meta:
        db_table = "provinsi"
        verbose_name = "Provinsi"
        verbose_name_plural = "Provinsi"

    def __unicode__(self):
        return self.nama_provinsi


class Kabupaten(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    id_provinsi = models.ForeignKey(Provinsi, verbose_name="Provinsi",
                    db_column="id_provinsi")
    kode_kabupaten = models.CharField("Kode Kabupaten", max_length=20,
                    db_column="kode_kabupaten")
    nama_kabupaten = models.CharField("Nama Kabupaten", max_length=200,
                    db_column="nama_kabupaten")

    class Meta:
        db_table = "kabupaten"
        verbose_name = "Kabupaten"
        verbose_name_plural = "Kabupaten"

    def __unicode__(self):
        return self.nama_kabupaten


class LokasiBidang(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    id_kabupaten = models.ForeignKey(Kabupaten, verbose_name="Kabupaten",
                    db_column="id_kabupaten")
    kode_lokasi_bidang = models.CharField("Kode Lokasi Bidang", max_length=20,
                    db_column="kode_lokasi_bidang")
    nama_lokasi_bidang = models.CharField("Nama Lokasi Bidang", max_length=200,
                    db_column="nama_lokasi_bidang")

    class Meta:
        db_table = "lokasi_bidang"
        verbose_name = "Lokasi Bidang"
        verbose_name_plural = "Lokasi Bidang"

    def __unicode__(self):
        return "%s  %s" % (self.kode_lokasi_bidang, self.nama_lokasi_bidang)


class SKPD(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    id_lokasi_bidang = models.ForeignKey(LokasiBidang,
                    verbose_name="Lokasi Bidang",
                    db_column="id_lokasi_bidang")
    kode_skpd = models.CharField("Kode SKPD", max_length=20,
                    db_column="kode_skpd")
    nama_skpd = models.CharField("Nama SKPD", max_length=200,
                    db_column="nama_skpd")

    class Meta:
        db_table = "skpd"
        verbose_name = "SKPD"
        verbose_name_plural = "SKPD"

    def __unicode__(self):
        return self.nama_skpd


class SUBSKPD(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    id_skpd = models.ForeignKey(SKPD,
                    verbose_name="SKPD",
                    db_column="id_skpd")
    kode_sub_skpd = models.CharField("Kode SUB SKPD", max_length=20,
                    db_column="kode_sub_skpd")
    nama_sub_skpd = models.CharField("Nama SUB SKPD", max_length=200,
                    db_column="nama_sub_skpd")

    class Meta:
        db_table = "sub_skpd"
        verbose_name = "SUB SKPD"
        verbose_name_plural = "SUB SKPD"
        ordering = ['id',]

    def __unicode__(self):
        return self.nama_sub_skpd



class JenisBarang(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    kode_jenis_barang = models.CharField("Kode Jenis Barang", max_length=40,
                    db_column="kode_jenis_barang", unique=True)
    jenis_barang = models.CharField("Jenis Barang", max_length=200,
                    db_column="jenis_barang", unique=True)

    class Meta:
        db_table = "jenis_barang"
        verbose_name = "Jenis Barang"
        verbose_name_plural = "Jenis Barang"

    def __unicode__(self):
        return self.jenis_barang



class Satuan(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    satuan = models.CharField("Satuan", max_length=60,
                    db_column="satuan", unique=True)

    class Meta:
        db_table = "satuan"
        verbose_name = "Satuan"
        verbose_name_plural = "Satuan"

    def __unicode__(self):
        return self.satuan



class Barang(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    id_jenis_barang = models.ForeignKey(JenisBarang,
                    verbose_name="Jenis Barang",
                    db_column="id_jenis_barang")
    nama_barang = models.CharField("Nama Barang", max_length=200,
                    db_column="nama_barang", unique=True)
    id_satuan = models.ForeignKey(Satuan,
                    verbose_name="Satuan",
                    db_column="id_satuan")

    class Meta:
        db_table = "barang"
        verbose_name = "Barang"
        verbose_name_plural = "Barang"
        ordering = ['id',]

    def __unicode__(self):
        return "%s : %s" % (self.nama_barang, self.id_satuan)



#Tambah Barang untuk admin menambah barang
class TambahBarang(Barang):

    class Meta:
        proxy = True
        verbose_name = "Tambah Barang"
        verbose_name_plural = "Tambah Barang"
        ordering = ['id',]

    def __unicode__(self):
        return "%s : %s" % (self.nama_barang, self.id_satuan)



class JenisTransaksi(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    jenis_transaksi = models.CharField("Jenis Transaksi", max_length=40,
                    db_column="jenis_transaksi", unique=True)

    class Meta:
        db_table = "jenis_transaksi"
        verbose_name = "Jenis Transaksi"
        verbose_name_plural = "Jenis Transaksi"

    def __unicode__(self):
        return self.jenis_transaksi



class StatusPegawai(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    status_pegawai = models.CharField("Status Pegawai", max_length=40,
                    db_column="status_pegawai", unique=True)

    class Meta:
        db_table = "status_pegawai"
        verbose_name = "Status Pegawai"
        verbose_name_plural = "Status Pegawai"

    def __unicode__(self):
        return self.status_pegawai



class Pegawai(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    nama_pegawai = models.CharField("Nama Pegawai", max_length=200,
                    db_column="nama_pegawai")
    nip = models.CharField("NIP", max_length=60,
                    db_column="nip")
    id_status_pegawai = models.ForeignKey(StatusPegawai,
                    verbose_name="Status Pegawai",
                    db_column="id_status_pegawai")
    id_skpd = models.ForeignKey(SKPD,
                    verbose_name="SKPD",
                    db_column="id_skpd")

    class Meta:
        db_table = "pegawai"
        verbose_name = "Pegawai"
        verbose_name_plural = "Pegawai"

    def __unicode__(self):
        return self.nama_pegawai



class JenisKeluar(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    jenis_keluar = models.CharField("Jenis Keluar", max_length=200,
                    db_column="jenis_keluar")

    class Meta:
        db_table = "jenis_keluar"
        verbose_name = "Jenis Keluar"
        verbose_name_plural = "Jenis Keluar"

    def __unicode__(self):
        return self.jenis_keluar



class PihakKetiga(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    nama_pihak_ketiga = models.CharField("Nama Pihak Ketiga", max_length=200,
                    db_column="nama_pihak_ketiga")
    id_skpd = models.ForeignKey(SKPD,
                    verbose_name="SKPD",
                    db_column="id_skpd")

    class Meta:
        db_table = "pihak_ketiga"
        verbose_name = "Pihak Ketiga"
        verbose_name_plural = "Pihak Ketiga"

    def __unicode__(self):
        return self.nama_pihak_ketiga



class AsalUsul(models.Model):
    id = models.AutoField(primary_key=True, db_column="id")
    asal_usul = models.CharField("Asal Usul", max_length=200,
                    db_column="asal_usul")

    class Meta:
        db_table = "asal_usul"
        verbose_name = "Asal Usul"
        verbose_name_plural = "Asal Usul"

    def __unicode__(self):
        return self.asal_usul



class Transaksi(models.Model):
    id = models.AutoField(primary_key=True, verbose_name="Kode Transaksi",
                    db_column="id")
    tanggal = models.DateField("Tanggal",
                    db_column="tanggal")
    id_jenis_transaksi = models.ForeignKey(JenisTransaksi,
                    verbose_name="Jenis Transaksi", null=True,
                    db_column="id_jenis_transaksi")
    id_sub_skpd = models.ForeignKey(SUBSKPD,
                    verbose_name="SUB SKPD",
                    db_column="id_sub_skpd")
    keterangan = models.CharField("Keterangan", max_length=200,
                    db_column="keterangan")

    class Meta:
        db_table = "transaksi"
        verbose_name = "Transaksi"
        verbose_name_plural = "Transaksi"

    def __unicode__(self):
        return "%s" % (self.id)



#Transaksi Keluar (untuk menampung inline Pegawai)
class TransaksiKeluar(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "Transaksi Keluar"
        verbose_name_plural = "Transaksi Keluar"

    def __unicode__(self):
        return "%s" % (self.id)



#Transaksi Masuk (untuk menampung inline Pihak Ketiga)
class TransaksiMasuk(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "Transaksi Masuk"
        verbose_name_plural = "Transaksi Masuk"

    def __unicode__(self):
        return "%s" % (self.id)



class Keluar(models.Model):
    id = models.OneToOneField(Transaksi, primary_key=True,
                    db_column="id_transaksi")
    id_pegawai = models.ForeignKey(Pegawai,
                    verbose_name="Pegawai",
                    db_column="id_pegawai")
    id_jenis_keluar = models.ForeignKey(JenisKeluar,
                    verbose_name="Jenis Keluar",
                    default=1,
                    db_column="id_jenis_keluar")

    class Meta:
        db_table = "keluar"
	verbose_name = "Keluar"
        verbose_name_plural = "Keluar"

    def __unicode__(self):
        return "%s" % (self.id)



class Masuk(models.Model):
    id = models.OneToOneField(Transaksi, primary_key=True,
                    db_column="id_transaksi")
    id_pihak_ketiga = models.ForeignKey(PihakKetiga,
                    verbose_name="Pihak Ketiga",
                    db_column="id_pihak_ketiga")
    id_asal_usul = models.ForeignKey(AsalUsul,
                    verbose_name="Asal Usul",
                    default=1,
                    db_column="id_asal_usul")

    class Meta:
        db_table = "masuk"
	verbose_name = "Masuk"
        verbose_name_plural = "Masuk"

    def __unicode__(self):
        return "%s" % (self.id)



class Persediaan(models.Model):
    id = models.AutoField(primary_key=True,
                    db_column="id")
    id_transaksi = models.ForeignKey(Transaksi,
                    verbose_name="Transaksi",
                    db_column="id_transaksi")
    id_barang = models.ForeignKey(Barang,
                    verbose_name="Barang",
                    db_column="id_barang")
    tanggal_kadaluarsa = models.DateField("Tanggal Kadaluarsa",
                    db_column="tanggal_kadaluarsa",
                    blank=True, null=True)
    jumlah = models.IntegerField("Jumlah",
                    default=0,
                    db_column="jumlah")
    harga = models.DecimalField("Harga",
                    max_digits=15, decimal_places=0, default=0,
                    db_column="harga")

    class Meta:
        db_table = "persediaan"
        verbose_name = "Persediaan"
        verbose_name_plural = "Persediaan"

    def __unicode__(self):
        return "%s" % (self.id_barang)



#Sebagai Inline Persediaan Masuk
class PersediaanMasuk(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "Persediaan Masuk"
        verbose_name_plural = "Persediaan Masuk"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Keluar
class PersediaanKeluar(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "Persediaan Keluar"
        verbose_name_plural = "Persediaan Keluar"

    def __unicode__(self):
        return "%s" % (self.id)




##Setwan

#Pegawai Setwan
class PegawaiSetwan(Pegawai):

    class Meta:
        proxy = True
        verbose_name = "01 : Pegawai Setwan"
        verbose_name_plural = "01 : Pegawai Setwan"

    def __unicode__(self):
        return "%s" % (self.nama_pegawai)



#Pihak Ketiga Setwan
class PihakKetigaSetwan(PihakKetiga):

    class Meta:
        proxy = True
        verbose_name = "01 : Pihak Ketiga Setwan"
        verbose_name_plural = "01 : Pihak Ketiga Setwan"

    def __unicode__(self):
        return "%s" % (self.nama_pihak_ketiga)



#Transaksi Keluar Setwan (untuk menampung inline Pegawai)
class TransaksiKeluarSetwan(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "01 : Transaksi Keluar Setwan"
        verbose_name_plural = "01 : Transaksi Keluar Setwan"

    def __unicode__(self):
        return "%s" % (self.id)



#Transaksi Masuk Setwan (untuk menampung inline Pihak Ketiga)
class TransaksiMasukSetwan(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "01 : Transaksi Masuk Setwan"
        verbose_name_plural = "01 : Transaksi Masuk Setwan"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pegawai dan Jenis Keluar
class KeluarSetwan(Keluar):

    class Meta:
        proxy = True
	verbose_name = "01 : Keluar Setwan"
        verbose_name_plural = "01 : Keluar Setwan"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pihak Ketiga dan Asal Usul
class MasukSetwan(Masuk):

    class Meta:
        proxy = True
	verbose_name = "01 : Masuk Setwan"
        verbose_name_plural = "01 : Masuk Setwan"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Masuk Setwan
class PersediaanMasukSetwan(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "01 : Persediaan Masuk Setwan"
        verbose_name_plural = "01 : Persediaan Masuk Setwan"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Keluar Setwan
class PersediaanKeluarSetwan(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "01 : Persediaan Keluar Setwan"
        verbose_name_plural = "01 : Persediaan Keluar Setwan"

    def __unicode__(self):
        return "%s" % (self.id)




