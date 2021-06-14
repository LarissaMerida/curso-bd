"""katieFlix URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from filme.views import *
from categoria.views import *

urlpatterns = [
    path('admin/', admin.site.urls),

    path('', index, name="home"),
    path('categoria/<id>', categoria, name='categoria'),
    path('pesquisa/', pesquisa, name='pesquisa'),

    # filme
    path('criar_filme', criar_filme, name="criar_filme"),
    path('editar_filme/<int:pk>/', editar_filme, name="editar_filme"),
    path('deletar_filme/<int:pk>/', deletar_filme, name="deletar_filme"),

]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


