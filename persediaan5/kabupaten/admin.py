from django.contrib import admin

from kabupaten.models import Provinsi, Kabupaten, LokasiBidang, SKPD, SUBSKPD, JenisBarang
from kabupaten.models import Satuan, Barang, JenisTransaksi, StatusPegawai, Pegawai, PihakKetiga
from kabupaten.models import Transaksi, Persediaan, Keluar, Masuk, PersediaanMasuk, PersediaanKeluar
from kabupaten.models import TransaksiKeluar, TransaksiMasuk
from kabupaten.models import JenisKeluar, AsalUsul, TambahBarang

from kabupaten.forms import HargaForm

class ProvinsiAdmin(admin.ModelAdmin):
    list_display = ("kode_provinsi", "nama_provinsi")

class KabupatenAdmin(admin.ModelAdmin):
    list_display = ("kode_kabupaten", "nama_kabupaten", "id_provinsi")

class SKPDInline(admin.TabularInline):
    model = SKPD
    extra = 0

class LokasiBidangAdmin(admin.ModelAdmin):
    list_display = ("kode_lokasi_bidang", "nama_lokasi_bidang", "id_kabupaten")
    ordering = ["kode_lokasi_bidang"]
    list_per_page = 10
    inlines = [SKPDInline]

class SUBSKPDInline(admin.TabularInline):
    model = SUBSKPD
    extra = 0

class SKPDAdmin(admin.ModelAdmin):
    list_display = ("kode_skpd", "nama_skpd", "id_lokasi_bidang")
    ordering = ["id"]
    list_per_page = 10
    inlines = [SUBSKPDInline]

class SUBSKPDAdmin(admin.ModelAdmin):
    list_display = ("kode_sub_skpd", "nama_sub_skpd", "id_skpd")
    ordering = ["id"]
    list_per_page = 10

class JenisBarangAdmin(admin.ModelAdmin):
    list_display = ("kode_jenis_barang", "jenis_barang")
    ordering = ["id"]
    list_per_page = 10

class SatuanAdmin(admin.ModelAdmin):
    list_display = ("satuan",)
    ordering = ["id"]
    list_per_page = 10

class BarangAdmin(admin.ModelAdmin):
    list_display = ("nama_barang", "id", "id_satuan", "id_jenis_barang")
    ordering = ["id"]
    list_per_page = 10
    readonly_fields = ['nama_barang', 'id_satuan', 'id_jenis_barang',]
    search_fields = ['nama_barang', "id"]

class TambahBarangAdmin(admin.ModelAdmin):
    list_display = ("nama_barang", "id", "id_satuan", "id_jenis_barang")
    ordering = ["id"]
    list_per_page = 10
    search_fields = ['nama_barang', "id"]

class JenisTransaksiAdmin(admin.ModelAdmin):
    list_display = ("jenis_transaksi",)
    ordering = ["id"]
    list_per_page = 10

class StatusPegawaiAdmin(admin.ModelAdmin):
    list_display = ("status_pegawai",)
    ordering = ["id"]
    list_per_page = 10

class PegawaiAdmin(admin.ModelAdmin):
    list_display = ("nama_pegawai", "nip", "id_status_pegawai", "id_skpd")
    ordering = ["id"]
    list_per_page = 10

class JenisKeluarAdmin(admin.ModelAdmin):
    list_display = ("jenis_keluar",)
    ordering = ["id"]
    list_per_page = 10

class PihakKetigaAdmin(admin.ModelAdmin):
    list_display = ("nama_pihak_ketiga", "id_skpd")
    ordering = ["id"]
    list_per_page = 10

class AsalUsulAdmin(admin.ModelAdmin):
    list_display = ("asal_usul",)
    ordering = ["id"]
    list_per_page = 10

class PersediaanInline(admin.TabularInline):
    model = Persediaan
    form = HargaForm
    extra = 0
    fields = ['id_barang',
                    'tanggal_kadaluarsa', 'jumlah', 'harga']
    raw_id_fields = ['id_barang']

class PersediaanMasukInline(admin.TabularInline):
    model = PersediaanMasuk
    form = HargaForm
    extra = 0
    fields = ['id_barang',
                    'tanggal_kadaluarsa', 'jumlah', 'harga']
    raw_id_fields = ['id_barang']

class PersediaanKeluarInline(admin.TabularInline):
    model = PersediaanKeluar
    form = HargaForm
    extra = 0
    fields = ['id_barang',
                    'jumlah', 'harga']
    raw_id_fields = ['id_barang']

class MasukInline(admin.TabularInline):
    model = Masuk
    extra = 0
    #raw_id_fields = ['id_pihak_ketiga']

class KeluarInline(admin.TabularInline):
    model = Keluar
    extra = 0
    #raw_id_fields = ['id_pegawai']

class TransaksiAdmin(admin.ModelAdmin):
    list_display = ("id", "tanggal", "id_jenis_transaksi", "id_sub_skpd", "keterangan")
    ordering = ["id"]
    save_as = True
    date_hierarchy = 'tanggal'
    search_fields = ['id']
    list_per_page = 10
    inlines = [PersediaanInline, ]



class TransaksiMasukAdmin(TransaksiAdmin):
    inlines = [MasukInline, PersediaanMasukInline, ]
    save_as = False

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_jenis_transaksi":
            kwargs["queryset"] = JenisTransaksi.objects.filter(id__exact=1)
        return super(TransaksiMasukAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        return self.model.objects.filter(id_jenis_transaksi__exact=1)



class TransaksiKeluarAdmin(TransaksiAdmin):
    inlines = [KeluarInline, PersediaanKeluarInline, ]
    save_as = False

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_jenis_transaksi":
            kwargs["queryset"] = JenisTransaksi.objects.filter(id__exact=2)
        return super(TransaksiKeluarAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        return self.model.objects.filter(id_jenis_transaksi__exact=2)


#REGISTER ADMIN
admin.site.register(Provinsi, ProvinsiAdmin)
admin.site.register(Kabupaten, KabupatenAdmin)
admin.site.register(LokasiBidang, LokasiBidangAdmin)
admin.site.register(SKPD, SKPDAdmin)
admin.site.register(SUBSKPD, SUBSKPDAdmin)
admin.site.register(JenisBarang, JenisBarangAdmin)
admin.site.register(Satuan, SatuanAdmin)
admin.site.register(Barang, BarangAdmin)
admin.site.register(TambahBarang, TambahBarangAdmin)
admin.site.register(JenisTransaksi, JenisTransaksiAdmin)
admin.site.register(StatusPegawai, StatusPegawaiAdmin)
admin.site.register(Pegawai, PegawaiAdmin)
admin.site.register(JenisKeluar, JenisKeluarAdmin)
admin.site.register(PihakKetiga, PihakKetigaAdmin)
admin.site.register(AsalUsul, AsalUsulAdmin)
admin.site.register(Transaksi, TransaksiAdmin)
admin.site.register(TransaksiKeluar, TransaksiKeluarAdmin)
admin.site.register(TransaksiMasuk, TransaksiMasukAdmin)
