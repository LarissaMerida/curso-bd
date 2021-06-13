from django.shortcuts import render

from categoria.models import *
from .models import *

# Create your views here.

def index(request):
    
    # Forma correta: 
    # filmes = Filme.objects.all()
    # categorias = Categoria.objects.all()

    filmes = Filme.objects.raw('SELECT * FROM filme order by id asc')
    categorias = Categoria.objects.raw('SELECT * FROM categoria order by tipo asc')
    return render(request, 'index.html', {'filmes': filmes, 'categorias': categorias})


def pesquisa(request):
    pesquisa = request.POST.get('pesquisa')
    tipo = request.POST.get('tipo')

    # categorias = Categoria.objects.all()
    categorias = Categoria.objects.raw('SELECT * FROM categoria order by tipo asc')


    if tipo == None:
        # filmes = Filme.objects.filter(titulo=pesquisa)
        filmes = Filme.objects.raw('SELECT * FROM filme where titulo=%s order by id asc', [pesquisa])
        return render(request, "index.html", {"categorias": categorias, "filmes": filmes})

    # filmes = Filme.objects.filter(
    #         Q(titulo__istartswith=pesquisa)|  Q(titulo__iendswith=pesquisa) |  Q(titulo__icontains=pesquisa)|
    #         Q(titulo__startswith=pesquisa)|  Q(titulo__endswith=pesquisa) |
    #         Q(descricao__istartswith=pesquisa)|  Q(descricao__iendswith=pesquisa) |  Q(descricao__icontains=pesquisa)|
    #         Q(descricao__startswith=pesquisa)|  Q(descricao__endswith=pesquisa)
    #     )

    filmes = Filme.objects.raw('select * from filme where titulo like %s or sinopse like %s  order by id asc ', ['%'+pesquisa+'%', '%'+pesquisa+'%'])
    return render(request, "index.html", {"categorias": categorias, "filmes": filmes})