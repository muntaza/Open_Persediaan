#SMPN 1 Awayan

#Transaksi Keluar SMPN 1 Awayan (untuk menampung inline Pegawai)
class TransaksiKeluarSMPN1Awayan(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "x1 : Transaksi Keluar SMPN 1 Awayan"
        verbose_name_plural = "x1 : Transaksi Keluar SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)



#Transaksi Masuk SMPN 1 Awayan (untuk menampung inline Pihak Ketiga)
class TransaksiMasukSMPN1Awayan(Transaksi):

    class Meta:
        proxy = True
        verbose_name = "x1 : Transaksi Masuk SMPN 1 Awayan"
        verbose_name_plural = "x1 : Transaksi Masuk SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pegawai dan Jenis Keluar
class KeluarSMPN1Awayan(Keluar):

    class Meta:
        proxy = True
	verbose_name = "x1 : Keluar SMPN 1 Awayan"
        verbose_name_plural = "x1 : Keluar SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)



#inline Pihak Ketiga dan Asal Usul
class MasukSMPN1Awayan(Masuk):

    class Meta:
        proxy = True
	verbose_name = "x1 : Masuk SMPN 1 Awayan"
        verbose_name_plural = "x1 : Masuk SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Masuk SMPN 1 Awayan
class PersediaanMasukSMPN1Awayan(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "x1 : Persediaan Masuk SMPN 1 Awayan"
        verbose_name_plural = "x1 : Persediaan Masuk SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)



#Sebagai Inline Persediaan Keluar SMPN 1 Awayan
class PersediaanKeluarSMPN1Awayan(Persediaan):

    class Meta:
        proxy = True
        verbose_name = "x1 : Persediaan Keluar SMPN 1 Awayan"
        verbose_name_plural = "x1 : Persediaan Keluar SMPN 1 Awayan"

    def __unicode__(self):
        return "%s" % (self.id)




