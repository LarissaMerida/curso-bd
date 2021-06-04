from django.db import models

# Create your models here.

class Categoria(models.Model):
    tipo = models.CharField(max_length=255, verbose_name="Categoria")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.tipo

    class Meta:
        db_table = "categoria"
        verbose_name_plural = "Categorias"
