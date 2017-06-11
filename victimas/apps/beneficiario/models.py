from django.db import models
from datetime import datetime

# Create your models here.
class Departamento(models.Model):
    codigo = models.CharField(max_length=2)
    departamento = models.CharField(max_length=50)

    class Meta:
        verbose_name = 'Departamento'
        verbose_name_plural = 'Departamentos'

    def __unicode__(self):
        return self.departamento

class Ciudad(models.Model):
    codigo = models.CharField(max_length=3)
    ciudad = models.CharField(max_length=50)
    departamento = models.ForeignKey(Departamento)

    class Meta:
        verbose_name = "Ciudad"
        verbose_name_plural = "Ciudades"

    def __unicode__(self):
        return self.ciudad

class HechoVictimizante(models.Model):
    codigo = models.CharField(max_length=1)
    hecho = models.CharField(max_length=100)

ListaGenero = (('H','Hombre'),('M','Mujer'),)

class TipoDocumento(models.Model):
    codigo = models.CharField(max_length=2)
    tipo = models.CharField(max_length=40)

class Regimen(models.Model):
    codigo = models.CharField(max_length=1)
    regimen = models.CharField(max_length=40)

class Eps(models.Model):
    codigo = models.CharField(max_length=2)
    eps = models.CharField(max_length=40)

class Parentesco(models.Model):
    codigo = models.CharField(max_length=2)
    parentesco = models.CharField(max_length=40)

class TipoEstablecimiento(models.Model):
    codigo = models.CharField(max_length=4)
    tipo = models.CharField(max_length=80)

class InstitucionEducativa(models.Model):
    codigo = models.CharField(max_length=2)
    institucion = models.CharField(max_length=80)
    tipoEstablecimiento = models.ForeignKey(TipoEstablecimiento)

class Profesion(models.Model):
    codigo = models.CharField(max_length=5)
    profesion = models.CharField(max_length=90)

class Ocupacion(models.Model):
    ocupacion = models.CharField(max_length=90)

class EnfoqueDiferencial(models.Model):
    codigo = models.CharField(max_length=2)
    enfoque = models.CharField(max_length=40)

ListaVivienda = (('1','PROPIA'),('2','ARRENDADA'),('3','POSEEDOR'),('4','FAMILIAR'),)

ListaZona = (('U','Centro poblado'),('R','Rural disperso'),('C','Cabecera'))

ListaEstrato = (('1','BAJO-BAJO'),('2','BAJO'),('3','MEDIO-BAJO'),('4','MEDIO'),('5','MEDIO-ALTO'),('6','ALTO'),)

class NivelEducativo(models.Model):
    codigo = models.CharField(max_length=1)
    nivel = models.CharField(max_length=60)

class Etnia(models.Model):
    etnia = models.CharField(max_length=60)

class CondicionSexual(models.Model):
    condicion = models.CharField(max_length=40)

class Discapacidad(models.Model):
    discapacidad = models.CharField(max_length=40)

class DiscapacidadDetalle(models.Model):
    discapacidad = models.CharField(max_length=64)

class EstadoCivil(models.Model):
    codigo = models.CharField(max_length=1)
    estadoCivil = models.CharField(max_length=40)

class TipoVivienda(models.Model):
    codigo = models.CharField(max_length=1)
    tipoVivienda = models.CharField(max_length=60)

class Bienes(models.Model):
    bienes = models.CharField(max_length=60)

class ServicioPublico(models.Model):
    codigo = models.CharField(max_length=1)
    servicioPublico = models.CharField(max_length=60)

class ActividadMes(models.Model):
    codigo = models.CharField(max_length=1)
    actividad = models.CharField(max_length=60)

class OcupaVivienda(models.Model):
    ocupaVivienda = models.CharField(max_length=60)

class Beneficiario(models.Model):
    extranjero = models.NullBooleanField()
    tipoDocumento = models.ForeignKey(TipoDocumento)
    numeroDocumento = models.IntegerField()
    fechaNacimiento = models.DateField(null=True)
    apellidoUno = models.CharField(max_length=50)
    apellidoDos = models.CharField(max_length=50)
    nombreUno = models.CharField(max_length=50)
    nombreDos = models.CharField(max_length=50)
    cabeza = models.BooleanField(default=False)
    documentoCabeza = models.IntegerField(null=True)
    codigoUV = models.CharField(max_length=15,null=True)
    email = models.EmailField()
    telefonoFijo = models.CharField(max_length=15,null=True)
    telefonoCelular = models.CharField(max_length=15,null=True)
    estadoCivil = models.ForeignKey(EstadoCivil)
    tservicio = models.NullBooleanField()
    pagaOtro = models.NullBooleanField()
    genero = models.CharField(max_length=1, choices=ListaGenero)
    condicionSexual = models.ForeignKey(CondicionSexual)
    perteneciaEtnica = models.ForeignKey(Etnia)
    discapacidad = models.ForeignKey(Discapacidad)
    detDiscapacidad = models.ForeignKey(DiscapacidadDetalle, null=True)
    regimen = models.ForeignKey(Regimen)
    eps = models.ForeignKey(Eps)
    familiasAccion = models.NullBooleanField()
    embarazo = models.NullBooleanField()
    ciudadProcedencia = models.ForeignKey(Ciudad, related_name='Ciudad_procedencia')
    predioAbandonado = models.NullBooleanField()
    ciudadPredio = models.ForeignKey(Ciudad, related_name='Ciudad_predio',null=True, blank=True)
    restitucionPredio = models.NullBooleanField()
    revictimizado = models.NullBooleanField()
    ciudadDeclara = models.ForeignKey(Ciudad, related_name='Ciudad_declara',null=True)
    fechaDeclara = models.DateField(null=True)
    estudiaActualmente = models.NullBooleanField()
    institucionEducativa = models.ForeignKey(InstitucionEducativa)
    ultimoAno = models.CharField(max_length=1)
    nivelEducativo = models.ForeignKey(NivelEducativo)
    kitEscolar = models.NullBooleanField()
    uniforme = models.NullBooleanField()
    otrosEstudios = models.NullBooleanField()
    otrosEstudiosD = models.TextField()
    profesion = models.ForeignKey(Profesion,null=True)
    actividadMes = models.ForeignKey(ActividadMes, null=True)
    semanas = models.CharField(max_length=15,null=True)
    ocupacion = models.ForeignKey(Ocupacion,null=True)
    percibe = models.NullBooleanField()
    ingresos = models.FloatField(null=True, blank=True)
    parentesco = models.ForeignKey(Parentesco)
    archivo = models.FileField(upload_to="archivos/", null=True, blank=True)

    def getEdad(self):
        return int((datetime.now().date() - self.fechaNacimiento).days / 365.25)

    def __str__(self):
        return self.nombreUno, self.fechaNacimiento

class Perfil(models.Model):
    perfil = models.CharField(max_length=20)

class HechoBeneficiario(models.Model):
    beneficiario = models.ForeignKey(Beneficiario)
    hecho = models.ForeignKey(HechoVictimizante)

class MaterialPared(models.Model):
    codigo = models.IntegerField()
    material = models.CharField(max_length=64)

class MaterialPiso(models.Model):
    codigo = models.IntegerField()
    material = models.CharField(max_length=64)

class Basura(models.Model):
    codigo = models.IntegerField()
    metodo = models.CharField(max_length=64)

class Hogar(models.Model):
    codigo = models.IntegerField()
    cabezaHogar = models.ForeignKey(Beneficiario)
    ciudadResidencia = models.ForeignKey(Ciudad,related_name='Ciudad_residencia',null=True)
    zonaPredio = models.CharField(max_length=1, choices=ListaZona)
    direccion = models.CharField(max_length=50)
    barrio = models.CharField(max_length=40)
    estratoPredio = models.IntegerField(choices=ListaEstrato,null=True)
    tipoVivienda = models.ForeignKey(TipoVivienda,null=True)
    ocupaVivienda = models.ForeignKey(OcupaVivienda,null=True)
    fechaResidencia = models.DateField(null=True)
    materialVivienda = models.ForeignKey(MaterialPared, null=True)
    materialPiso = models.ForeignKey(MaterialPiso, null=True)
    servicioPublico = models.ManyToManyField(ServicioPublico)
    basura = models.ForeignKey(Basura, null=True)
    cuartos = models.SmallIntegerField(null=True)
    grupos = models.SmallIntegerField(null=True)
    cuartosOcupa = models.SmallIntegerField(null=True)
    cuartosDuerme = models.SmallIntegerField(null=True)
    inodoro = models.CharField(max_length=64)
    ubicaInodoro = models.CharField(max_length=50)
    usoInodoro = models.CharField(max_length=50)
    cantidadInodoro = models.SmallIntegerField(null=True)
    ducha = models.NullBooleanField(null=True)
    origenAgua = models.CharField(max_length=50)
    llegaAgua = models.NullBooleanField()
    diasAgua = models.SmallIntegerField(null=True)
    continuoAgua = models.NullBooleanField()
    horasAgua = models.SmallIntegerField(null=True)
    preparar = models.CharField(max_length=50)
    cocina = models.CharField(max_length=50)
    combustibleCocina = models.CharField(max_length=50)
    alumbrado = models.CharField(max_length=50)
    stelefono = models.CharField(max_length=50)
    bienes = models.ManyToManyField(Bienes)
    totalPersonas = models.SmallIntegerField(null=True)
    recibo = models.FileField(upload_to="archivos/", null=True, blank=True)
    certificado = models.FileField(upload_to="archivos/", null=True, blank=True)

class Usuario(models.Model):
    nombreUno = models.CharField(max_length=50)
    nombreDos = models.CharField(max_length=50)
    apellidoUno = models.CharField(max_length=50)
    apellidoDos = models.CharField(max_length=50)
    email = models.EmailField()
    password = models.CharField(max_length=128)
    imagen = models.TextField()
    perfil = models.ForeignKey(Perfil)

class Carnet(models.Model):
    codigo = models.IntegerField()
    beneficiario = models.ForeignKey(Beneficiario)
    fechaExpide = models.DateField(null=True)
    fechaVence = models.DateField(null=True)
    estado = models.NullBooleanField(null=True)
    grupo = models.IntegerField()
