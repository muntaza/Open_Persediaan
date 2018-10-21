### $Id: forms.py,v 1.1 2018/10/20 08:10:40 muntaza Exp $


from django import forms


class HargaForm(forms.ModelForm):
    harga = forms.DecimalField(label="Harga", max_digits=15, decimal_places=0, localize=True, initial=0)
