from django.conf.urls import url
from apps.informes.views import *
urlpatterns = [
    url(r'^informes/$', informes, name='informes'),
    url(r'^infoSisben/$', infoSisben, name='infoSisben'),
    url(r'^informeVca/$', informeVca, name='informeVca'),
    url(r'^infoSisbenPdf$', infoSisbenPdf, name='infoSisbenPdf'),

]
