from django.contrib import admin
from .models import Beneficiario

# Register your models here.
class BeneficiarioAdmin(admin.ModelAdmin):
    list_display = ["__str__","nombreUno","fechaNacimiento"]
    class Meta:
        model = Beneficiario

admin.site.register(Beneficiario, BeneficiarioAdmin)
