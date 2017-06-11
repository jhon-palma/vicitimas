from django.shortcuts import render,  redirect
from django.http import HttpResponse, HttpResponseRedirect
from django.core import serializers
from apps.beneficiario.models import *
from django.contrib import messages
from django.core.urlresolvers import reverse
from victimas.validators import *
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from django.template.loader import render_to_string
import json
import weasyprint


def index(request):
    return render(request,'index.html')

def datosBasicos(request):
    tipoDocumento = TipoDocumento.objects.all()
    estado = EstadoCivil.objects.all()
    parentesco = Parentesco.objects.all()
    informacion = {'relationship':parentesco,'estadoc':estado,'tipoDocumento':tipoDocumento}
    if request.method == 'POST':
        validator = datosBasicosValidator(request.POST)
        validator.required = ['numeroDocumento','apellidoUno','nombreUno','numeroRegistro']
        if validator.is_valid():
            beneficiario = Beneficiario()
            beneficiario.apellidoUno = request.POST['apellidoUno']
            beneficiario.apellidoDos = request.POST['apellidoDos']
            beneficiario.nombreUno = request.POST['nombreUno']
            beneficiario.nombreDos = request.POST['nombreDos']
            if request.POST['jefe'] == 'True':
                beneficiario.parentesco = Parentesco.objects.get(pk = '1')
                beneficiario.cabeza = True
                beneficiario.documentoCabeza = request.POST['numeroDocumento']

            if request.POST['jefe'] == 'False':
                head = Beneficiario.objects.filter( documentoCabeza  = request.POST['docCabeza'] )
                beneficiario.cabeza = False
                if head:
                    beneficiario.parentesco = Parentesco.objects.get(pk = request.POST['parentesco'])
                    beneficiario.documentoCabeza = request.POST['docCabeza']
                else:
                    messages.warning(request, 'Cabeza de hogar no Existe')
                    return HttpResponseRedirect('/beneficiario/datosBasicos',informacion)
            beneficiario.codigoUV = request.POST['numeroRegistro']

            beneficiario.extranjero = request.POST['extranjero']

            beneficiario.tipoDocumento = TipoDocumento.objects.get(pk = request.POST['tipod'])
            beneficiario.numeroDocumento = request.POST['numeroDocumento']
            ano = request.POST['anonace']
            mes = request.POST['mesnace']
            dia = request.POST['dianace']
            beneficiario.fechaNacimiento = ano+'-'+mes+'-'+dia
            beneficiario.email = request.POST['email']
            beneficiario.telefonoFijo = request.POST['telefono']
            beneficiario.telefonoCelular = request.POST['celular']
            beneficiario.estadoCivil = EstadoCivil.objects.get(pk = request.POST['estado'])
            if request.POST["pago"] == '1':
                beneficiario.pagaOtro = True
            else:
                beneficiario.pagaOtro = False
            if request.POST["tservicio"] == '1':
                beneficiario.tservicio = True
            else:
                beneficiario.tservicio = False
            beneficiario.save()
            if request.POST['jefe'] == 'True':
                hogar = Hogar()
                hogar.codigo = request.POST['numeroDocumento']
                hogar.cabezaHogar = Beneficiario.objects.get( pk = beneficiario.id )
                hogar.save()
            ben = Beneficiario.objects.get(id=beneficiario.id)
            messages.success(request, validator.getMessage())
            return HttpResponseRedirect('/beneficiario/documentos/%s' % ben.id)
            #return HttpResponseRedirect('/beneficiario/datosCaracterizacion/%s' % ben.id, informacion )
        messages.warning(request, validator.getMessage())
        return HttpResponseRedirect('/beneficiario/datosBasicos',informacion)
    return render(request,'datosBasicos.html', informacion)

def datosBasicosEditar(request, id_ben):
    tipoDocumento = TipoDocumento.objects.all()
    estado = EstadoCivil.objects.all()
    parentesco = Parentesco.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    fecha = beneficiario.fechaNacimiento
    diar = fecha.day
    mesr = fecha.month
    anor = fecha.year
    datos = {'extranjero':beneficiario.extranjero,'numeroDocumento':beneficiario.numeroDocumento,'codigoUV':beneficiario.codigoUV,'nombreUno':beneficiario.nombreUno,\
    'nombreDos':beneficiario.nombreDos,'apellidoUno':beneficiario.apellidoUno,'apellidoDos':beneficiario.apellidoDos,\
    'email':beneficiario.email,'telefono':beneficiario.telefonoFijo,'celular':beneficiario.telefonoCelular,\
    'estadoCivil':beneficiario.estadoCivil,'anonace':anor,'mesnace':mesr,'dianace':diar,\
    'tipod':beneficiario.tipoDocumento,'parentesco':beneficiario.parentesco,'jefe':beneficiario.cabeza,\
    'docCabeza':beneficiario.documentoCabeza,'tservicio':beneficiario.tservicio,'pago':beneficiario.pagaOtro,\
    'tipoDocumento':tipoDocumento,'relationship':parentesco,'estadoc':estado}
    if request.method == 'POST':
        validator = datosBasicosValiEditar(request.POST)
        validator.required = ['numeroDocumento','apellidoUno','nombreUno']
        if validator.is_valid():
            beneficiario.apellidoUno = request.POST['apellidoUno']
            beneficiario.apellidoDos = request.POST['apellidoDos']
            beneficiario.nombreUno = request.POST['nombreUno']
            beneficiario.nombreDos = request.POST['nombreDos']
            if request.POST['jefe'] == 'True':
                beneficiario.parentesco = Parentesco.objects.get(pk = '1')
                beneficiario.cabeza = True
                beneficiario.documentoCabeza = request.POST['numeroDocumento']
            if request.POST['jefe'] == 'False':
                if not 'docCabeza' in request.POST:
                    head = beneficiario.documentoCabeza
                else:
                    head = Beneficiario.objects.filter( documentoCabeza  = request.POST['docCabeza'] )
                    beneficiario.cabeza = False
                if head:
                    if not 'parentesco' in request.POST:
                        beneficiario.parentesco = beneficiario.parentesco
                        beneficiario.documentoCabeza = beneficiario.documentoCabeza
                    else:
                        beneficiario.parentesco = Parentesco.objects.get(pk = request.POST['parentesco'])
                        beneficiario.documentoCabeza = request.POST['docCabeza']
                else:
                    messages.warning(request, 'Cabeza de hogar no Existe')
                    return HttpResponseRedirect('/beneficiario/datosBasicos',informacion)
            beneficiario.codigoUV = request.POST['numeroRegistro']
            beneficiario.extranjero = request.POST['extranjero']
            beneficiario.tipoDocumento = TipoDocumento.objects.get(pk = request.POST['tipod'])
            beneficiario.numeroDocumento = request.POST['numeroDocumento']
            ano = request.POST['anonace']
            mes = request.POST['mesnace']
            dia = request.POST['dianace']
            beneficiario.fechaNacimiento = ano+'-'+mes+'-'+dia
            beneficiario.email = request.POST['email']
            beneficiario.telefonoFijo = request.POST['telefono']
            beneficiario.telefonoCelular = request.POST['celular']
            beneficiario.estadoCivil = EstadoCivil.objects.get(pk = request.POST['estado'])
            beneficiario.pagaOtro = request.POST["pago"]
            beneficiario.tservicio = request.POST["tservicio"]
            beneficiario.save()
            messages.success(request, validator.getMessage())
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
        messages.warning(request, validator.getMessage())
        return HttpResponseRedirect('/beneficiario/datosBasicosEditar/%s' % beneficiario.id ,datos)
    return render(request,'datosBasicos.html', datos )

def documentos(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    hogar = Hogar.objects.get(codigo = beneficiario.documentoCabeza)
    if request.method == 'POST':
        beneficiario.archivo = request.FILES['img1']
        beneficiario.archivo.name = str(beneficiario.numeroDocumento) + '.pdf'
        if beneficiario.cabeza == 'True':
            hogar.recibo = request.FILES['img3']
            hogar.recibo.name = "rp" + str(hogar.codigo) + '.pdf'
            hogar.certificado = request.FILES['img2']
            hogar.certificado.name = "ct" + str(hogar.codigo) + '.pdf'
            hogar.save()
        beneficiario.save()
        return HttpResponseRedirect('/beneficiario/datosCaracterizacion/%s' % beneficiario.id )
    return render(request, 'documentos.html',{'beneficiario':beneficiario})

def datosCaracterizacion(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    genero = ListaGenero
    condicion = CondicionSexual.objects.all()
    etnia = Etnia.objects.all()
    discapacidad = Discapacidad.objects.all()
    discapacidadDetalle = DiscapacidadDetalle.objects.all()
    regimen = Regimen.objects.all()
    eps = Eps.objects.all()
    datos = { 'detDis':discapacidadDetalle,'generos':genero,'condiciones':condicion,'etnias':etnia,'discapacidades':discapacidad,'regimenes':regimen,'epss':eps}
    if request.method == 'POST':
        validator = datosCaracterizacionValidator(request.POST)
        validator.required = ['genero','condicion','etnia','discapacidad','detDiscapacidad','regimen','eps','faccion']
        if validator.is_valid():
            beneficiario.genero = request.POST['genero']
            beneficiario.condicionSexual = CondicionSexual.objects.get(pk = request.POST['condicion'])
            beneficiario.perteneciaEtnica = Etnia.objects.get(pk = request.POST['etnia'])
            beneficiario.discapacidad = Discapacidad.objects.get(pk = request.POST['discapacidad'])
            beneficiario.detDiscacidad = request.POST['detDiscapacidad']
            beneficiario.regimen = Regimen.objects.get(pk = request.POST['regimen'])
            beneficiario.eps = Eps.objects.get(pk = request.POST['eps'])
            beneficiario.familiasAccion = request.POST['faccion']
            beneficiario.embarazo = request.POST['embarazo']
            beneficiario.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/beneficiario/datosProcedencia/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return HttpResponseRedirect('/beneficiario/datosCaracterizacion/%s' % beneficiario.id )
    return render(request, 'datosCaracterizacion.html',datos)

def datosCaracterizacionEditar(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    genero = ListaGenero
    condicion = CondicionSexual.objects.all()
    etnia = Etnia.objects.all()
    discapacidad = Discapacidad.objects.all()
    discapacidadDetalle = DiscapacidadDetalle.objects.all()
    regimen = Regimen.objects.all()
    eps = Eps.objects.all()
    datos = { 'detDis':discapacidadDetalle,'generos':genero,'condiciones':condicion,'etnias':etnia,'discapacidades':discapacidad,
    'regimenes':regimen,'epss':eps,'genero':beneficiario.genero,'condicion':beneficiario.condicionSexual,'etnia':beneficiario.perteneciaEtnica,
    'discapacidad':beneficiario.discapacidad,'detDiscapacidad':beneficiario.detDiscapacidad,'regimen':beneficiario.regimen,
    'faccion':beneficiario.familiasAccion,'eps':beneficiario.eps, 'embarazo':beneficiario.embarazo}
    if request.method == 'POST':
        validator = datosCaracterizacionValidator(request.POST)
        validator.required = ['genero','condicion','etnia','discapacidad','detDiscapacidad','regimen','eps','faccion']
        if validator.is_valid():
            beneficiario.genero = request.POST['genero']
            beneficiario.condicionSexual = CondicionSexual.objects.get(pk = request.POST['condicion'])
            beneficiario.perteneciaEtnica = Etnia.objects.get(pk = request.POST['etnia'])
            beneficiario.discapacidad = Discapacidad.objects.get(pk = request.POST['discapacidad'])
            beneficiario.detDiscapacidad = DiscapacidadDetalle.objects.get( pk = request.POST['detDiscapacidad'])
            beneficiario.regimen = Regimen.objects.get(pk = request.POST['regimen'])
            beneficiario.eps = Eps.objects.get(pk = request.POST['eps'])
            beneficiario.familiasAccion = request.POST['faccion']
            beneficiario.embarazo = request.POST['embarazo']
            beneficiario.save()
            messages.success(request,'Datos actualizados correctamente')
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return HttpResponseRedirect('/beneficiario/datosCaracterizacionEditar/%s' % beneficiario.id, datos )
    return render(request, 'datosCaracterizacion.html',datos)

def datosProcedencia(request, id_ben):
    hechos = HechoVictimizante.objects.all()
    departamento = Departamento.objects.all()
    ciudad = Ciudad.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    datos = { 'hechos':hechos,'departamentos':departamento,'ciudades':ciudad }
    if request.method == 'POST':
        validator = datosProcedenciaValidator(request.POST)
        validator.required = ['ciudadp']
        if validator.is_valid():
            beneficiario.ciudadProcedencia = Ciudad.objects.get(pk = request.POST['ciudadp'])
            beneficiario.predioAbandonado = request.POST['predio']
            if request.POST['ciudpa'] == '0':
                beneficiario.ciudadPredio = None
            else:
                beneficiario.ciudadPredio = Ciudad.objects.get(pk = request.POST['ciudpa'])
            if request.POST['inicior'] == '2':
                beneficiario.restitucionPredio = None
            else:
                beneficiario.restitucionPredio = request.POST['inicior']
            beneficiario.revictimizado = request.POST['revictima']
            beneficiario.ciudadDeclara = Ciudad.objects.get(pk = request.POST['ciudadd'])
            ano = request.POST['anonace']
            mes = request.POST['mesnace']
            dia = request.POST['dianace']
            beneficiario.fechaDeclara = ano+'-'+mes+'-'+dia
            beneficiario.save()
            ben = Beneficiario.objects.get(id = beneficiario.id)
            hecho = request.POST.getlist('hecho[]')
            for i in hecho:
                hechob = HechoBeneficiario()
                hechob.beneficiario = Beneficiario.objects.get( pk = ben.id)
                hechob.hecho = HechoVictimizante.objects.get(pk = i)
                hechob.save()
            messages.success(request,'Datos Creados correctamente')
            return HttpResponseRedirect('/beneficiario/datosEducacion/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return HttpResponseRedirect('/beneficiario/datosProcedencia/%s' % beneficiario.id )
    return render(request, 'datosProcedencia.html',datos)

def datosProcedenciaEditar(request,id_ben):
    hechos = HechoVictimizante.objects.all()
    departamento = Departamento.objects.all()
    ciudad = Ciudad.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    try:
        h = HechoBeneficiario.objects.filter(beneficiario = beneficiario.id)
        fecha = beneficiario.fechaDeclara
        anor = fecha.year
        mesr = fecha.month
        diar = fecha.day
        datos = { 'hechos':hechos,'departamentos':departamento,'ciudades':ciudad,'ciudadp':beneficiario.ciudadProcedencia,
        'predio':beneficiario.predioAbandonado,'ciudpa':beneficiario.ciudadPredio,'inicior':beneficiario.restitucionPredio,
        'revictima':beneficiario.revictimizado,'ciudadd':beneficiario.ciudadDeclara,
        'hc':h, 'anonace':anor,'mesnace':mesr,'dianace':diar }
        if request.method == 'POST':
            validator = datosProcedenciaValidator(request.POST)
            validator.required = ['ciudadp']
            if validator.is_valid():
                beneficiario.ciudadProcedencia = Ciudad.objects.get(pk = request.POST['ciudadp'])
                beneficiario.predioAbandonado = request.POST['predio']
                if request.POST['ciudpa'] == '0':
                    beneficiario.ciudadPredio = None
                else:
                    if request.POST['predio'] == 'False':
                        beneficiario.ciudadPredio = None
                    else:
                        beneficiario.ciudadPredio = Ciudad.objects.get(pk = request.POST['ciudpa'])
                if request.POST['inicior'] == '2':
                    beneficiario.restitucionPredio = None
                else:
                    if request.POST['predio'] == 'False':
                        beneficiario.restitucionPredio = None
                    else:
                        beneficiario.restitucionPredio = request.POST['inicior']
                beneficiario.revictimizado = request.POST['revictima']
                beneficiario.ciudadDeclara = Ciudad.objects.get(pk = request.POST['ciudadd'])
                ano = request.POST['anonace']
                mes = request.POST['mesnace']
                dia = request.POST['dianace']
                beneficiario.fechaDeclara = ano+'-'+mes+'-'+dia
                beneficiario.save()
                ben = Beneficiario.objects.get(id = beneficiario.id)
                hechod = HechoBeneficiario.objects.filter(beneficiario = ben.id)
                hechod.delete()
                hecho = request.POST.getlist('hecho[]')
                for i in hecho:
                    hechob = HechoBeneficiario()
                    hechob.beneficiario = Beneficiario.objects.get( pk = ben.id)
                    hechob.hecho = HechoVictimizante.objects.get(pk = i)
                    hechob.save()
                messages.success(request,'Datos modificados correctamente')
                return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/beneficiario/datosProcedenciaEditar/%s' %beneficiario.id ,datos)
    except:
        return HttpResponseRedirect('/beneficiario/datosProcedencia/%s' % beneficiario.id )
    return render(request, 'datosProcedencia.html',datos)

def datosEducacion(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    educacion = NivelEducativo.objects.all()
    institucion = InstitucionEducativa.objects.all()
    tipo = TipoEstablecimiento.objects.all()
    datos = {'educaciones':educacion,'instituciones':institucion, 'tipos':tipo }
    if request.method == 'POST':
        validator = datosEducacionValidator(request.POST)
        validator.required = ['estudia']
        if validator.is_valid():
            beneficiario.estudiaActualmente = request.POST['estudia']
            if request.POST['instituto'] == '0':
                beneficiario.institucionEducativa = None
            else:
                beneficiario.institucionEducativa = InstitucionEducativa.objects.get(pk = request.POST['instituto'])
            beneficiario.ultimoAno = request.POST['ultimo']
            beneficiario.nivelEducativo = NivelEducativo.objects.get(pk = request.POST['educacion'])
            if 'kit' in request.POST:
                beneficiario.kitEscolar = request.POST['kit']
            else:
                beneficiario.kitEscolar = None
            if 'uniforme' in request.POST:
                beneficiario.uniforme = request.POST['uniforme']
            else:
                beneficiario.uniforme = None
            beneficiario.otrosEstudios = request.POST['adicional']
            cadena = ''
            lista = request.POST.getlist('otro[]')
            for x in lista:
                print(x)
                cadena = cadena+x+','
            beneficiario.otrosEstudiosD = cadena
            beneficiario.save()
            messages.success(request,'Datos modificados correctamente')
            return redirect('/beneficiario/datosLaborales/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosEducacion/%s' % beneficiario.id )
    return render(request, 'datosEducacion.html',datos)

def datosEducacionEditar(request, id_ben):
    educaciones = NivelEducativo.objects.all()
    instituciones = InstitucionEducativa.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    tipo = TipoEstablecimiento.objects.all()
    datos = {'educaciones':educaciones,'instituciones':instituciones,'ben':beneficiario, 'tipos':tipo }
    if request.method == 'POST':
        validator = datosEducacionValidator(request.POST)
        validator.required = ['estudia']
        if validator.is_valid():
            beneficiario.estudiaActualmente = request.POST['estudia']
            if request.POST['instituto'] == '0':
                beneficiario.institucionEducativa = None
            else:
                beneficiario.institucionEducativa = InstitucionEducativa.objects.get(pk = request.POST['instituto'])
            beneficiario.ultimoAno = request.POST['ultimo']
            beneficiario.nivelEducativo = NivelEducativo.objects.get(pk = request.POST['educacion'])
            beneficiario.kitEscolar = request.POST['kit']
            beneficiario.uniforme = request.POST['uniforme']
            beneficiario.otrosEstudios = request.POST['adicional']
            cadena = ''
            lista = request.POST.getlist('otro[]')
            for x in lista:
                print(x)
                cadena = cadena+x+','
            beneficiario.otrosEstudiosD = cadena
            beneficiario.save()
            messages.success(request,'Datos modificados correctamente')
            return redirect('/beneficiario/datosLaborales/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosEducacion/%s' % beneficiario.id )
    return render(request, 'datosEducacion.html',datos)

def datosLaborales(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    actividades = ActividadMes.objects.all()
    profesiones = Profesion.objects.all()
    datos = {'actividades':actividades,'profesiones':profesiones }
    if request.method == 'POST':
        validator = datosLaboralValidator(request.POST)
        validator.required = ['profesion']
        if validator.is_valid():
            beneficiario.profesion = Profesion.objects.get(pk = request.POST['profesion'])
            beneficiario.actividadMes = ActividadMes.objects.get(pk = request.POST['actividad'])
            beneficiario.semanas = request.POST['semanas']
            beneficiario.percibe = request.POST['percibe']
            if request.POST['ingresos'] == '':
                beneficiario.ingresos = float('0')
            else:
                beneficiario.ingresos = request.POST['ingresos']
            beneficiario.save()
            ben = Beneficiario.objects.get( pk = beneficiario.id )
            if ben.cabeza == True:
                messages.success(request,'Beneficiario creado correctamente')
                return redirect('/beneficiario/datosResidencia/%s' % beneficiario.id )
            else:
                messages.success(request,'Beneficiario creado correctamente')
                return redirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosLaborales/%s' % beneficiario.id )
    return render(request, 'datosLaborales.html', datos)

def datosLaboralesEditar(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    actividades = ActividadMes.objects.all()
    profesiones = Profesion.objects.all()
    datos = {'actividades':actividades,'profesiones':profesiones,'ben':beneficiario }
    if request.method == 'POST':
        validator = datosLaboralValidator(request.POST)
        validator.required = ['profesion']
        if validator.is_valid():
            beneficiario.profesion = Profesion.objects.get(pk = request.POST['profesion'])
            beneficiario.actividadMes = ActividadMes.objects.get(pk = request.POST['actividad'])
            beneficiario.semanas = request.POST['semanas']
            beneficiario.percibe = request.POST['percibe']
            if request.POST['ingresos'] == '':
                beneficiario.ingresos = float('0')
            else:
                beneficiario.ingresos = request.POST['ingresos']
            beneficiario.save()
            messages.success(request,'Datos modificados correctamente')
            return redirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosLaboralesEditar/%s' % beneficiario.id )
    return render(request, 'datosLaborales.html', datos)

def datosResidencia(request, id_ben):
    departamento = Departamento.objects.all()
    ciudad = Ciudad.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    zona = ListaZona
    estrato = ListaEstrato
    vivienda = TipoVivienda.objects.all()
    ocupaVivienda = OcupaVivienda.objects.all()
    datos = { 'departamentos':departamento,'ciudades':ciudad, 'zonas':zona, 'estratos':estrato,'viviendas':vivienda,'ocupaViviendas':ocupaVivienda}
    if request.method == 'POST':
        validator = datosResidenciaValidator(request.POST)
        validator.required = ['direccion','barrio']
        if validator.is_valid():
            hogar.ciudadResidencia = Ciudad.objects.get(pk = request.POST['ciudad'])
            hogar.zonaPredio = request.POST['zonaPredio']
            hogar.direccion = request.POST['direccion']
            hogar.barrio = request.POST['barrio']
            hogar.estratoPredio = request.POST['estratoPredio']
            hogar.tipoVivienda = TipoVivienda.objects.get(pk = request.POST['tipoVivienda'])
            hogar.ocupaVivienda = OcupaVivienda.objects.get(pk = request.POST['ocupaVivienda'])
            ano = request.POST['anovive']
            mes = request.POST['mesvive']
            dia = request.POST['diavive']
            hogar.fechaResidencia = ano+'-'+mes+'-'+dia
            hogar.save()
            messages.success(request,'Datos modificados correctamente')
            return HttpResponseRedirect('/beneficiario/datosResidenciaMaterial/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidencia/%s' % beneficiario.id )
    return render(request, 'datosResidencia.html', datos)

def datosResidenciaEditar(request, id_ben):
    departamento = Departamento.objects.all()
    ciudad = Ciudad.objects.all()
    beneficiario = Beneficiario.objects.get(id = id_ben)
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    zona = ListaZona
    estrato = ListaEstrato
    eben = str(hogar.estratoPredio)
    vivienda = TipoVivienda.objects.all()
    ocupaVivienda = OcupaVivienda.objects.all()
    fecha = hogar.fechaResidencia
    diar = fecha.day
    mesr = fecha.month
    anor = fecha.year
    datos = { 'departamentos':departamento,'ciudades':ciudad, 'zonas':zona, 'estratos':estrato,'viviendas':vivienda,
    'hogar':hogar,'ocupaViviendas':ocupaVivienda, 'anonace':anor,'mesnace':mesr,'dianace':diar,'eben':eben}
    if request.method == 'POST':
        validator = datosResidenciaValidator(request.POST)
        validator.required = ['direccion','barrio']
        if validator.is_valid():
            hogar.ciudadResidencia = Ciudad.objects.get(pk = request.POST['ciudad'])
            hogar.zonaPredio = request.POST['zonaPredio']
            hogar.direccion = request.POST['direccion']
            hogar.barrio = request.POST['barrio']
            hogar.estratoPredio = request.POST['estratoPredio']
            hogar.tipoVivienda = TipoVivienda.objects.get(pk = request.POST['tipoVivienda'])
            hogar.ocupaVivienda = OcupaVivienda.objects.get(pk = request.POST['ocupaVivienda'])
            ano = request.POST['anovive']
            mes = request.POST['mesvive']
            dia = request.POST['diavive']
            hogar.fechaResidencia = ano+'-'+mes+'-'+dia
            hogar.save()
            messages.success(request,'Datos modificados correctamente')
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidenciaEditar/%s' % beneficiario.id )
    return render(request, 'datosResidencia.html', datos)

def datosResidenciaMaterial(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    mparedes = MaterialPared.objects.all()
    mpisos = MaterialPiso.objects.all()
    basuras = Basura.objects.all()
    servicios = ServicioPublico.objects.all()
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    datos = {'mparedes':mparedes,'mpisos':mpisos,'servicios':servicios,'basuras':basuras}
    if request.method == 'POST':
        validator = datosResidenciaMaterialValidator(request.POST)
        validator.required = ['cuartos','grupos','cocupa','cduerme']
        if validator.is_valid():
            hogar.materialVivienda = MaterialPared.objects.get(pk = request.POST['mpared'])
            hogar.materialPiso = MaterialPiso.objects.get(pk = request.POST['mpisos'])
            servicioPublico = request.POST.getlist('servicio[]')
            for x in servicioPublico:
                hogar.servicioPublico.add(x)
            hogar.basura = Basura.objects.get(pk = request.POST['basura'])
            hogar.cuartos = request.POST['cuartos']
            hogar.grupos = request.POST['grupos']
            hogar.cuartosOcupa = request.POST['cocupa']
            hogar.cuartosDuerme = request.POST['cduerme']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return HttpResponseRedirect('/beneficiario/datosResidenciaMaterialdos/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidenciaMaterial/%s' % beneficiario.id )
    return render(request, 'datosResidenciaMaterial.html',datos)

def datosResidenciaMaterialEditar(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    mparedes = MaterialPared.objects.all()
    mpisos = MaterialPiso.objects.all()
    basuras = Basura.objects.all()
    servicios = ServicioPublico.objects.all()
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    h = hogar.servicioPublico.all()
    datos = {'mparedes':mparedes,'mpisos':mpisos,'servicios':servicios,'basuras':basuras,'hogar':hogar,'hc':h}
    if request.method == 'POST':
        validator = datosResidenciaMaterialValidator(request.POST)
        validator.required = ['cuartos','grupos','cocupa','cduerme']
        if validator.is_valid():
            hogar.materialVivienda = MaterialPared.objects.get(pk = request.POST['mpared'])
            hogar.materialPiso = MaterialPiso.objects.get(pk = request.POST['mpisos'])
            servicioPublico = request.POST.getlist('servicio[]')
            for x in servicioPublico:
                hogar.servicioPublico.add(x)
            hogar.basura = Basura.objects.get(pk = request.POST['basura'])
            hogar.cuartos = request.POST['cuartos']
            hogar.grupos = request.POST['grupos']
            hogar.cuartosOcupa = request.POST['cocupa']
            hogar.cuartosDuerme = request.POST['cduerme']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidenciaMaterial/%s' % beneficiario.id )
    return render(request, 'datosResidenciaMaterial.html',datos)

def datosResidenciaMaterialdos(request, id_ben):
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    beneficiario = Beneficiario.objects.get(id = id_ben)
    if request.method == 'POST':
        validator = datosResidenciaMatdosValidator(request.POST)
        validator.required = ['sanitario']
        if validator.is_valid():
            hogar.inodoro = request.POST['sanitario']
            hogar.ubicaInodoro = request.POST['ubica']
            hogar.usoInodoro = request.POST['usaInodoro']
            hogar.cantidadInodoro = request.POST['cinodoro']
            hogar.ducha = request.POST['ducha']
            hogar.origenAgua = request.POST['obtagua']
            hogar.llegaAgua = request.POST['dllega']
            if request.POST['dllega'] == 'True':
                hogar.diasAgua = 7
            else:
                hogar.diasAgua = request.POST['cdias']
            hogar.continuoAgua = request.POST['hllega']
            if request.POST['hllega'] == 'True':
                hogar.horasAgua = 24
            else:
                hogar.horasAgua = request.POST['choras']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return HttpResponseRedirect('/beneficiario/datosCocina/%s' % beneficiario.id )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidenciaMaterialdos/%s' % beneficiario.id )
    return render(request, 'datosResidenciaMaterialdos.html')

def datosResidenciaMatdosEdit(request, id_ben):
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    beneficiario = Beneficiario.objects.get(id = id_ben)
    datos = {'hogar':hogar}
    if request.method == 'POST':
        validator = datosResidenciaMatdosValidator(request.POST)
        validator.required = ['cdias','choras']
        if validator.is_valid():
            hogar.inodoro = request.POST['sanitario']
            hogar.ubicaInodoro = request.POST['ubica']
            hogar.usoInodoro = request.POST['usaInodoro']
            hogar.cantidadInodoro = request.POST['cinodoro']
            hogar.ducha = request.POST['ducha']
            hogar.origenAgua = request.POST['obtagua']
            hogar.llegaAgua = request.POST['dllega']
            if request.POST['dllega'] == 'True':
                hogar.diasAgua = 7
            else:
                hogar.diasAgua = request.POST['cdias']
            hogar.continuoAgua = request.POST['hllega']
            if request.POST['hllega'] == 'True':
                hogar.horasAgua = 24
            else:
                hogar.horasAgua = request.POST['choras']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosResidenciaMaterialdos/%s' % beneficiario.id, datos )
    return render(request, 'datosResidenciaMaterialdos.html',datos)

def datosCocina(request, id_ben):
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    beneficiario = Beneficiario.objects.get(id = id_ben)
    bienes = Bienes.objects.all()
    datos ={'bienes':bienes}
    if request.method == 'POST':
        validator = datosCocinaValidator(request.POST)
        validator.required = ['personas']
        if validator.is_valid():
            #import pdb; pdb.set_trace()
            hogar.preparar= request.POST['cocina']
            hogar.cocina = request.POST['usoCocina']
            hogar.combustibleCocina = request.POST['combustible']
            hogar.alumbrado = request.POST['alumbrado']
            hogar.stelefono = request.POST['telefono']
            bien = request.POST.getlist('bienes[]')
            Hogar.bienes.through.objects.filter(hogar_id=hogar.id).delete()
            for x in bien:
                hogar.bienes.add(x)
            hogar.totalPersonas = request.POST['personas']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return redirect('/beneficiario/beneficiario_consulta' )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosCocina/%s' % beneficiario.id, datos )
    return render(request, 'datosCocina.html', datos)

def datosCocinaEditar(request, id_ben):
    hogar = Hogar.objects.get(cabezaHogar = id_ben)
    beneficiario = Beneficiario.objects.get(id = id_ben)
    bienes = Bienes.objects.all()
    bienesh = Hogar.bienes.through.objects.filter(hogar_id=hogar.id)
    datos ={'bienes':bienes,'hogar':hogar, 'bienesh':bienesh }
    if request.method == 'POST':
        validator = datosCocinaValidator(request.POST)
        validator.required = ['personas']
        if validator.is_valid():
            hogar.preparar= request.POST['cocina']
            hogar.cocina = request.POST['usoCocina']
            hogar.combustibleCocina = request.POST['combustible']
            hogar.alumbrado = request.POST['alumbrado']
            hogar.stelefono = request.POST['telefono']
            bien = request.POST.getlist('bienes[]')
            Hogar.bienes.through.objects.filter(hogar_id=hogar.id).delete()
            for x in bien:
                hogar.bienes.add(x)
            hogar.totalPersonas = request.POST['personas']
            hogar.save()
            messages.success(request,'Datos Agregados correctamente')
            return redirect('/beneficiario/beneficiario_consulta' )
        messages.warning(request,validator.getMessage())
        return redirect('/beneficiario/datosCocina/%s' % beneficiario.id, datos )
    return render(request, 'datosCocina.html', datos)

def beneficiario_create(request):
    #beneficiario = Beneficiario.objects.get(id = id_ben)
    #if request.method == 'GET':
        #datos = {'beneficiario':beneficiario}
        #return HttpResponseRedirect('/beneficiario/beneficiario_create/%s/'%beneficiario.id)
    return render(request,'beneficiario_create.html')

def ciudadesAjax(request):
    id_departamento = request.GET['id']
    ciudad = Ciudad.objects.filter(departamento__id=id_departamento)
    data = serializers.serialize('json', ciudad, fields=('ciudad','codigo'))
    return HttpResponse(data, content_type='application/json')

def beneficiario_consulta(request):
    if request.method == 'POST':
        variable = request.POST['search']
        ben = Beneficiario.objects.filter( numeroDocumento = variable )

        if ben:
            b = Beneficiario.objects.get( numeroDocumento = variable )
            h = HechoBeneficiario.objects.filter(beneficiario = b.id)
            hogar = Hogar.objects.get(codigo = b.documentoCabeza)
            return render(request,'beneficiario_consulta.html',{'beneficiario':b,'hechos':h,'hogar':hogar})
        else:
            messages.warning(request, "El beneficiario %s no se encuentra registrado" %variable )
            return HttpResponseRedirect('/beneficiario/beneficiario_consulta')
    return render(request, 'beneficiario_consulta.html')

def profesion_nueva(request):
    codigo = request.GET['codigo']
    profe = request.GET['profesion']
    try:
        profesion = Profesion()
        profesion.codigo = codigo
        profesion.profesion = profe
        profesion.save()
        return HttpResponse("CREATED", status = 201)
    except:
        return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json', status = 500)
    return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json')

def eps_nueva(request):
    codigo = request.GET['codigo']
    epsn = request.GET['epsn']
    try:
        nuevaEps = Eps()
        nuevaEps.codigo = codigo
        nuevaEps.eps = epsn
        nuevaEps.save()
        return HttpResponse("CREATED", status = 201)
    except:
        return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json', status = 500)
    return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json')

def educativa_nueva(request):
    codigo = request.GET['codigo']
    instituto = request.GET['institutom']
    tipoEstablecimiento = request.GET['tipo']
    try:
        institucion = InstitucionEducativa()
        institucion.codigo = codigo
        institucion.institucion = instituto
        institucion.tipoEstablecimiento = TipoEstablecimiento.objects.get(pk = tipoEstablecimiento )
        institucion.save()
        return HttpResponse("CREATED", status = 201)
    except:
        return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json', status = 500)
    return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json')

def generaCarnet(request):
    msg = None
    if request.method == 'POST':
        try:
            variable = request.POST['buscalo']
            beneficiario = Beneficiario.objects.get( numeroDocumento = variable)
            if beneficiario:
                grupo = Beneficiario.objects.filter(documentoCabeza=beneficiario.documentoCabeza)
                cnt = Carnet.objects.filter(grupo=beneficiario.documentoCabeza, estado=True)
                if cnt:
                    return render(request,'generaCarnet.html',{'beneficiarios':grupo, 'cnt':cnt })
                else:
                    messages.warning(request,'No hay carnet activo por el grupo familiar')
                    return redirect('/beneficiario/activaCarnet/%s' % beneficiario.id )
        except:
            messages.warning(request,"El beneficiario %s no se encuentra registrado" %variable)
            return HttpResponseRedirect('/beneficiario/generaCarnet')
    return render(request,'generaCarnet.html')

def activaCarnet(request, id_ben):
    beneficiario = Beneficiario.objects.get(id = id_ben)
    cnt = Carnet.objects.filter(grupo=beneficiario.documentoCabeza)
    grupo = Beneficiario.objects.filter(documentoCabeza=beneficiario.documentoCabeza)
    if request.method == 'POST':
        for x in grupo:
            carnet = Carnet()
            carnet.codigo = x.numeroDocumento
            ano = request.POST['anoexp']
            mes = request.POST['mesexp']
            dia = request.POST['diaexp']
            carnet.fechaExpide = ano+'-'+mes+'-'+dia
            anov = request.POST['anoven']
            mesv = request.POST['mesven']
            diav = request.POST['diaven']
            carnet.fechaVence = anov+'-'+mesv+'-'+diav
            carnet.estado = True
            carnet.beneficiario = Beneficiario.objects.get(pk=x.id)
            carnet.grupo = beneficiario.documentoCabeza
            carnet.save()
        messages.success(request,'Carnets activados correctamente')
        return HttpResponseRedirect('/beneficiario/generaCarnet')
    return render(request,'activaCarnet.html',{'beneficiarios':grupo,'cnt':cnt })

def imprimirCarnet(request):
    if 'grupo' in request.GET.keys():
        beneficiario = request.GET['grupo']
        beneficiarios = Beneficiario.objects.filter(documentoCabeza = beneficiario )
        cnt = Carnet.objects.filter(grupo=beneficiario)
        html = render_to_string('pdf.html',{'beneficiarios': cnt})
        response = HttpResponse(content_type='application/pdf')
        response['Content-Disposition'] = 'filename="carnet_{}.pdf"'.format("order.id")
        weasyprint.HTML(string=html, base_url=request.build_absolute_uri()).write_pdf(response)

    if 'beneficiario' in request.GET.keys():
        beneficiario = request.GET['beneficiario']

        beneficiarios = Beneficiario.objects.filter(numeroDocumento = beneficiario )

        html = render_to_string('pdf.html',{'beneficiarios': beneficiarios})
        response = HttpResponse(content_type='application/pdf')
        response['Content-Disposition'] = 'filename="carnet_{}.pdf"'.format("order.id")
        weasyprint.HTML(string=html, base_url=request.build_absolute_uri()).write_pdf(response)
    return response

def verdocumentos(request):
    if request.method == 'POST':
        variable = request.POST['buscalo']
        ben = Beneficiario.objects.get( numeroDocumento = variable )
        cc = ben.archivo
        print(cc)
        return render(request,'verdocumentos.html',{ 'cc':cc })
    return render(request,'verdocumentos.html')

def beneficiarioAjax(request):
    doc_beneficiario = request.GET['doc']
    beneficiario = Beneficiario.objects.filter(numeroDocumento=doc_beneficiario).exists()
    if beneficiario:
        valido = True
    else:
        valido = False
    #print (valido)
    #data = serializers.serialize('json',valido)
    return HttpResponse(json.dumps({'valido':valido}), content_type='application/json')
