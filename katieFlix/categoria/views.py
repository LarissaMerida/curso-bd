from django.shortcuts import render

from filme.models import Filme
from .models import Categoria

# Create your views here.
def categoria(request, id):
    # categoria = Categoria.objects.get(id=id)
    # filmes = Filme.objects.filter(categoria_id=categoria.id)
    # categorias = Categoria.objects.all()


    filmes = Filme.objects.raw('select f.id, f.titulo, f.lancamento, f.sinopse from filme as f inner join filme_categoria as c on c.filme_id = f.id where c.categoria_id=%s order by f.id asc', [id])
    categorias = Categoria.objects.raw('SELECT * FROM categoria order by tipo asc')


    return render(request, "categoria.html", {'filmes': filmes, 'categorias': categorias})
