from django.conf.urls import url, include
from django.contrib import admin
from apps.beneficiario.views import index

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', index, name='index'),
    url(r'^beneficiario/', include('apps.beneficiario.urls', namespace='beneficiario')),
    url(r'^informes/', include('apps.informes.urls', namespace='informes')),
]
