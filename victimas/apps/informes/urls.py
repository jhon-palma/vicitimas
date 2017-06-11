from django.conf.urls import url
from apps.informes.views import *
urlpatterns = [

    url(r'^informeVca/$', informeVca, name='informeVca'),

]
