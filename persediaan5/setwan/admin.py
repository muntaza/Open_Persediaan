from django.contrib import admin

from kabupaten.models import Provinsi, Kabupaten, LokasiBidang, SKPD, SUBSKPD, JenisBarang
from kabupaten.models import Satuan, Barang, JenisTransaksi, StatusPegawai, Pegawai, PihakKetiga
from kabupaten.models import Transaksi, Persediaan, Keluar, Masuk, PersediaanMasuk, PersediaanKeluar
from kabupaten.models import TransaksiKeluar, TransaksiMasuk

from kabupaten.models import TransaksiKeluarSetwan, TransaksiMasukSetwan
from kabupaten.models import KeluarSetwan, MasukSetwan
from kabupaten.models import PersediaanKeluarSetwan, PersediaanMasukSetwan
from kabupaten.models import PihakKetigaSetwan
from kabupaten.models import PegawaiSetwan

from kabupaten.forms import HargaForm

from kabupaten.admin import PersediaanMasukInline, PersediaanKeluarInline
from kabupaten.admin import MasukInline, KeluarInline
from kabupaten.admin import TransaksiMasukAdmin, TransaksiKeluarAdmin
from kabupaten.admin import PihakKetigaAdmin
from kabupaten.admin import PegawaiAdmin



class PersediaanMasukSetwanInline(PersediaanMasukInline):
    model = PersediaanMasukSetwan



class PersediaanKeluarSetwanInline(PersediaanKeluarInline):
    model = PersediaanKeluarSetwan



class MasukSetwanInline(MasukInline):
    model = MasukSetwan

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_pihak_ketiga":
            kwargs["queryset"] = PihakKetiga.objects.filter(id_skpd__exact=1)
        return super(MasukSetwanInline, self).formfield_for_foreignkey(db_field, request, **kwargs)



class KeluarSetwanInline(KeluarInline):
    model = KeluarSetwan

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_pegawai":
            kwargs["queryset"] = Pegawai.objects.filter(id_skpd__exact=1)
        return super(KeluarSetwanInline, self).formfield_for_foreignkey(db_field, request, **kwargs)


class TransaksiMasukSetwanAdmin(TransaksiMasukAdmin):
    inlines = [MasukSetwanInline, PersediaanMasukSetwanInline, ]

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_sub_skpd":
            kwargs["queryset"] = SUBSKPD.objects.filter(id_skpd__exact=1)
        if db_field.name == "id_jenis_transaksi":
            kwargs["queryset"] = JenisTransaksi.objects.filter(id__exact=1)
        return super(TransaksiMasukSetwanAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        qs = SUBSKPD.objects.filter(id_skpd__exact=1)
        return self.model.objects.filter(id_sub_skpd__in=qs).filter(id_jenis_transaksi__exact=1)



class TransaksiKeluarSetwanAdmin(TransaksiKeluarAdmin):
    inlines = [KeluarSetwanInline, PersediaanKeluarSetwanInline, ]

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_sub_skpd":
            kwargs["queryset"] = SUBSKPD.objects.filter(id_skpd__exact=1)
        if db_field.name == "id_jenis_transaksi":
            kwargs["queryset"] = JenisTransaksi.objects.filter(id__exact=2)
        return super(TransaksiKeluarSetwanAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        qs = SUBSKPD.objects.filter(id_skpd__exact=1)
        return self.model.objects.filter(id_sub_skpd__in=qs).filter(id_jenis_transaksi__exact=2)



class PihakKetigaSetwanAdmin(PihakKetigaAdmin):

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_skpd":
            kwargs["queryset"] = SKPD.objects.filter(id__exact=1)
        return super(PihakKetigaSetwanAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        return self.model.objects.filter(id_skpd__exact=1)



class PegawaiSetwanAdmin(PegawaiAdmin):

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "id_skpd":
            kwargs["queryset"] = SKPD.objects.filter(id__exact=1)
        return super(PegawaiSetwanAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)

    def get_queryset(self, request):
        return self.model.objects.filter(id_skpd__exact=1)



admin.site.register(TransaksiKeluarSetwan, TransaksiKeluarSetwanAdmin)
admin.site.register(TransaksiMasukSetwan, TransaksiMasukSetwanAdmin)
admin.site.register(PihakKetigaSetwan, PihakKetigaSetwanAdmin)
admin.site.register(PegawaiSetwan, PegawaiSetwanAdmin)
