from django.db import models
from filme.models import *

# Create your models here.
class Avaliacao(models.Model):
    nota = models.FloatField(verbose_name="Nota")
    descricao = models.TextField(verbose_name="Descrição", blank=True, null=True )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    filme_id = models.ForeignKey(Filme, on_delete=models.CASCADE)

    def __str__(self):
        return self.nota

    class Meta:
        db_table = "avaliacao"
        verbose_name_plural = "Avaliações"