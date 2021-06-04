from django.db import models

# Create your models here.

class Artista(models.Model):
    nome = models.CharField(max_length=255, verbose_name="Nome")
    nome_artistico = models.CharField(max_length=255, verbose_name="Nome artístico", blank=True, null=True )
    data_nascimento = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.nome

    class Meta:
        db_table = "artista"
        verbose_name_plural = "Artistas"
