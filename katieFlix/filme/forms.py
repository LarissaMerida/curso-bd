from .models import Filme
from django import forms


class FilmeForm(forms.ModelForm):
    # sinopse = forms.CharField(widget=forms.Textarea, label="Sinopse")
    # titulo = forms.CharField(widget=forms.TextInput, label="Título")
    # categoria = forms.ChoiceField(required=True, widget=forms.Select(attrs={'disabled':'disabled'}))


    class Meta:
        model = Filme
        fields = '__all__'
        widgets = {
            'titulo': forms.TextInput(attrs={'class': 'form-control form-group'}),
            'sinopse': forms.Textarea(attrs={'class': 'form-control form-group'}),
            'lancamento': forms.DateInput(attrs={'class': 'form-control form-group', 'data-mask':"00/00/0000"}),
            'artista': forms.SelectMultiple(attrs={'class': 'form-control form-group'}),
            'categoria': forms.SelectMultiple(attrs={'class': 'form-control form-group'}),
        }
