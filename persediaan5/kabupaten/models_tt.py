##Tebing Tinggi

#Pegawai Tebing Tinggi
class PegawaiTebingTinggi(Pegawai):

    class Meta:
        proxy = True
        verbose_name = "38 : Pegawai Tebing Tinggi"
        verbose_name_plural = "38 : Pegawai Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.nama_pegawai)



#Pihak Ketiga Tebing Tinggi
class PihakKetigaTebingTinggi(PihakKetiga):

    class Meta:
        proxy = True
        verbose_name = "38 : Pihak Ketiga Tebing Tinggi"
        verbose_name_plural = "38 : Pihak Ketiga Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.nama_pihak_ketiga)



#Transaksi Keluar Tebing Tinggi (untuk menampung inline Pegawai)
class TransaksiKeluarTebingTinggi(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "38 : Transaksi Keluar Tebing Tinggi"
        verbose_name_plural = "38 : Transaksi Keluar Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)



#Transaksi Masuk Tebing Tinggi (untuk menampung inline Pihak Ketiga)
class TransaksiMasukTebingTinggi(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "38 : Transaksi Masuk Tebing Tinggi"
        verbose_name_plural = "38 : Transaksi Masuk Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pegawai dan Jenis Keluar
class KeluarTebingTinggi(Keluar):

    class Meta:
        proxy = True
	verbose_name = "38 : Keluar Tebing Tinggi"
        verbose_name_plural = "38 : Keluar Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pihak Ketiga dan Asal Usul
class MasukTebingTinggi(Masuk):

    class Meta:
        proxy = True
	verbose_name = "38 : Masuk Tebing Tinggi"
        verbose_name_plural = "38 : Masuk Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Masuk Tebing Tinggi
class PersediaanMasukTebingTinggi(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "38 : Persediaan Masuk Tebing Tinggi"
        verbose_name_plural = "38 : Persediaan Masuk Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Keluar Tebing Tinggi
class PersediaanKeluarTebingTinggi(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "38 : Persediaan Keluar Tebing Tinggi"
        verbose_name_plural = "38 : Persediaan Keluar Tebing Tinggi"

    def __unicode__(self):
        return "%s" % (self.id)




