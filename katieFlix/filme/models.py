from django.db import models
from categoria.models import Categoria
from artista.models import Artista

# Create your models here.

class Filme(models.Model):
    titulo = models.CharField(max_length=255, verbose_name="Título")
    sinopse = models.TextField(verbose_name="Sinopse" )
    lancamento = models.DateTimeField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    categoria = models.ManyToManyField(Categoria)
    artista = models.ManyToManyField(Artista)

    def __str__(self):
        return self.titulo

    class Meta:
        db_table = "filme"
        verbose_name_plural = "Filmes"
