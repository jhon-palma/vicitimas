# -*- encoding: utf-8 -*-
from apps.beneficiario.models import *
from django.core.validators import validate_email
class Validator(object):
    _post  = None
    required = []
    _message = ''

    def __init__(self, post):
        """
        Carga los datos provenientes de un formulario atraves de POST
        @param post: Datos que proviene de POST
        """
        self._post = post

    def is_empty(self, field):
        """
        Verifica si un campo de formulario es vacio
        @param field: nombre del campo de formulario
        """
        if field == '' or field is None:
            return True
        return False

    def is_valid(self):
        try:
            """
            Indica si existen errores de formuarlio
            @return Boolean
            """
            # validar campos vacios
            for field in self.required:
                if self.is_empty(self._post[field]):

                    self._message = 'El campo %s no puede ser vacio' %  field
                    return False

            return True
        except:
            self._message = 'Información incompleta'
            return False

    def getMessage(self):
        return self._message

class datosBasicosValidator(Validator):
    def is_valid(self):
        try:
            if not super(datosBasicosValidator, self).is_valid():
                return False
            doc = str(self._post['numeroDocumento'])
            if len(doc) > 10:
                self._message = 'Verifique el número de documento!'
                return False
            if Beneficiario.objects.filter(numeroDocumento = self._post['numeroDocumento']).exists():
                self._message = 'El beneficiario %s ya se encuentra registrado!' %self._post['numeroDocumento']
                return False
            if self._post['extranjero'] == '':
                self._message = 'Escoja si es extranjero'
                return False
            if self._post['tipod'] == '':
                self._message = 'Escoja el tipo de documento'
                return False
            doc = self._post['numeroDocumento']
            if not doc.isdigit():
                self._message = 'El tipo de documento debe ser númerico'
                return False
            if self._post['dianace'] == '':
                self._message = 'Escoja el dia de nacimiemto'
                return False
            if self._post['mesnace'] == '':
                self._message = 'Escoja el mes de nacimiemto'
                return False
            if self._post['anonace'] == '':
                self._message = 'Escoja el año de nacimiemto'
                return False
            if self._post['estado'] == '':
                self._message = 'Escoja el estado civil'
                return False
        except:
                self._message = 'Información incompleta'
                return False
        self._message = 'Beneficario creado exitosamente'
            #Por ultimo retornamos que en caso de que todo marche bien es correcto el formulario
        return True

class datosBasicosValiEditar(Validator):
    def is_valid(self):
        try:
            if not super(datosBasicosValiEditar, self).is_valid():
                return False
            if self._post['extranjero'] == '':
                self._message = 'Escoja si es extranjero'
                return False
            if self._post['tipod'] == '':
                self._message = 'Escoja el tipo de documento'
                return False
            doc = self._post['numeroDocumento']
            if not doc.isdigit():
                self._message = 'El tipo de documento debe ser númerico'
                return False

            if self._post['estado'] == '':
                self._message = 'Escoja el estado civil'
                return False
        except:
                self._message = 'Información incompleta'
                return False
        self._message = 'Beneficario modificado exitosamente'
            #Por ultimo retornamos que en caso de que todo marche bien es correcto el formulario
        return True

class datosCaracterizacionValidator(Validator):
    def is_valid(self):
        if not super(datosCaracterizacionValidator, self).is_valid():
            return False
        if self._post['genero'] == '':
            self._message = 'Escoja el genero'
            return False
        if self._post['condicion'] == '':
            self._message = 'Escoja la condición sexual'
            return False
        if self._post['etnia'] == '':
            self._message = 'Escoja si pertenece a alguna Etnia'
            return False
        if self._post['discapacidad'] == '':
            self._message = 'Escoja si tiene alguna discapacidad'
            return False
        if self._post['detDiscapacidad'] == '':
            self._message = 'Escoja si tiene alguna discapacidad'
            return False
        if self._post['regimen'] == '':
            self._message = 'Escoja el regimen al que pertenece'
            return False
        if self._post['eps'] == '':
            self._message = 'Escoja la eps'
            return False
        if self._post['faccion'] == '':
            self._message = 'Escoja si es beneficiario de familias en acción'
            return False
        self._message = 'Datos agregados exitosamente'

        return True

class datosProcedenciaValidator(Validator):
    def is_valid(self):
        if not super(datosProcedenciaValidator, self).is_valid():
            return False
        if self._post['ciudadp'] == '':
            self._message = 'Escoja la ciudad de procedencia'
            return False
        if self._post['predio'] == '':
            self._message = 'Escoja si tiene un predio abandonado'
            return False
        if self._post['revictima'] == '':
            self._message = 'Escoja la ciudad de declaración'
            return False
        if self._post['ciudadd'] == '':
            self._message = 'Escoja la ciudad de declaración'
            return False
        if self._post['anonace'] == '':
            self._message = 'Escoja el año'
            return False
        if self._post['mesnace'] == '':
            self._message = 'Escoja el mes'
            return False
        if self._post['dianace'] == '':
            self._message = 'Escoja el dia'
            return False
        self._message = 'Datos agregados exitosamente'

        return True

class datosEducacionValidator(Validator):
    def is_valid(self):
        if not super(datosEducacionValidator, self).is_valid():
            return False
        if self._post['estudia'] == '':
            self._message = 'Escoja si el beneficiario estudia'
            return False
        if self._post['ultimo'] == '':
            self._message = 'Escoja ultimo año aprobado'
            return False
        if self._post['educacion'] == '':
            self._message = 'Escoja máximo nivel educativo alcanzado'
            return False
        if self._post['adicional'] == '':
            self._message = 'Escoja si tiene estudios complementarios'
            return False
        self._message = 'Datos agregados exitosamente'

        return True

class datosLaboralValidator(Validator):
    def is_valid(self):
        if not super(datosLaboralValidator, self).is_valid():
            return False
        if self._post['profesion'] == '0':
            self._message = 'Escoja la profesión del beneficiario'
            return False
        if self._post['actividad'] == '0':
            self._message = 'Escoja la actividad en el ultimo mes'
            return False
        if self._post['percibe'] == '9':
            self._message = 'Escoja si percibe algún ingreso'
            return False
        self._message = 'Datos agregados exitosamente'

        return True

class datosResidenciaValidator(Validator):
    def is_valid(self):
        if not super(datosResidenciaValidator, self).is_valid():
            return False
        if self._post['departamento'] == '':
            self._message = 'Escoja el departamento de residencia del beneficiario'
            return False
        if self._post['ciudad'] == '':
            self._message = 'Escoja la ciudad de residencia del beneficiario'
            return False
        if self._post['zonaPredio'] == '':
            self._message = 'Escoja la zona de residencia del beneficiario'
            return False
        if self._post['estratoPredio'] == '':
            self._message = 'Escoja el estrato'
            return False
        if self._post['tipoVivienda'] == '':
            self._message = 'Escoja el tipo de vivienda'
            return False
        if self._post['ocupaVivienda'] == '':
            self._message = 'Escoja la condición de ocupación de la vivienda'
            return False
        if self._post['diavive'] == '':
            self._message = 'Escoja el día'
            return False
        if self._post['mesvive'] == '':
            self._message = 'Escoja el mes'
            return False
        if self._post['anovive'] == '':
            self._message = 'Escoja el año'
            return False
        self._message = 'Datos agregados exitosamente'

        return True

class datosResidenciaMaterialValidator(Validator):
    def is_valid(self):
        if not super(datosResidenciaMaterialValidator, self).is_valid():
            return False
        if self._post['mpared'] == '0':
            self._message = 'Escoja el material predominante en las paredes exteriores'
            return False
        if self._post['mpisos'] == '0':
            self._message = 'Escoja el material predominante de los pisos'
            return False
        if self._post['basura'] == '0':
            self._message = 'Escoja como eliminan la basura en el hogar'
            return False

        self._message = 'Datos agregados exitosamente'

        return True

class datosResidenciaMatdosValidator(Validator):
    def is_valid(self):
        if not super(datosResidenciaMatdosValidator, self).is_valid():
            return False
        if self._post['sanitario'] == '':
            self._message = 'Escoja el servicio de sanitario que utilizan'
            return False
        if self._post['ducha'] == '':
            self._message = 'Escoja si tiene ducha conectada al acueducto'
            return False
        if self._post['obtagua'] == '':
            self._message = 'Escoja el origen del agua para consumo'
            return False

        self._message = 'Datos agregados exitosamente'

        return True

class datosCocinaValidator(Validator):
    def is_valid(self):
        if not super(datosCocinaValidator, self).is_valid():
            return False
        if self._post['cocina'] == '':
            self._message = 'Escoja donde preparan los alimentos'
            return False
        if self._post['alumbrado'] == '':
            self._message = 'Escoja el tipo de alumbrado que usan en el hogar'
            return False
        if self._post['telefono'] == '':
            self._message = 'Escoja el servicio de teléfono'
            return False

        self._message = 'Datos agregados exitosamente'

        return True

class FormLoginValidator(Validator):
    acceso = None

    def is_valid(self):
        if not super(FormLoginValidator, self).is_valid():
            return False

        usuario = self._post['usuario']
        clave = self._post['clave']

        acceso = auth.authenticate(username=usuario, password=clave)
        self.acceso = acceso
        if acceso is None:
            self._message = 'Usuario o contraseña inválido'
            return False
        return True

class EditarValidator(Validator):

    if Validator == True:
        self._message = 'Modificación exitosa'

    def getMessage(self):
        return self._message

class ClienteEditarValidator(Validator):

    def is_valid(self):
        try:
            if not super(ClienteValidator, self).is_valid():
                return False
            doc = self._post['numero_documento']
            tel = self._post['telefono']
            if not doc.isdigit():
                self._message = 'El tipo de documento debe ser númerico'
                return False
            if not tel.isdigit():
                self._message = 'Número de teléfono incorrecto'
                return False
            try:
                validate_email(self._post['email'])
            except:
                self._message = 'Correo electronico invalido'
                return False
        except Exception as e:
                self._message = e#'Información incompleta'
                return False
        self._message = 'Cliente creado exitosamente'
            #Por ultimo retornamos que en caso de que todo marche bien es correcto el formulario
        return True

class SucursalValidator(Validator):

    def is_valid(self):
        try:
            if not super(SucursalValidator, self).is_valid():
                return False
            if Sucursal.objects.filter( nombre = self._post['nombre']).exists():
                self._message = 'Sucursal %s ya se encuentra registrada' %self._post['nombre']
                return False
            tel = self._post['telefono']
            if not tel.isdigit():
                self._message = 'Número de teléfono incorrecto'
                return False
        except:
                self._message = 'Información incompleta'
                return False

        self._message = 'Sucursal agregada exitosamente'

        return True

class DocuValidator(Validator):
    def is_valid(self):
        try:
            if not super(DocuValidator, self).is_valid():
                return False
            if Documento.objects.filter(documento = self._post['docu']).exists():
                self._message = 'El Documento %s ya se encuentra registrado' %self._post['docu']
                return False
            conse_fin = self._post['conse_fin']
            conse_ini = self._post['conse_ini']
            if not conse_fin.isdigit():
                self._message = 'El Consecutivo final debe ser númerico'
                return False
            if not conse_ini.isdigit():
                self._message = 'El Consecutivo inicial debe ser númerico'
                return False
        except:
                self._message = 'Información incompleta'
                return False
        self._message = 'Documento creado exitosamente'
        return True

class DocValidator(Validator):
    def is_valid(self):
        try:
            if not super(DocValidator, self).is_valid():
                return False
            if Documento.objects.filter(documento = self._post['docu']).exists():
                self._message = 'El Documento %s ya se encuentra registrado' %self._post['docu']
                return False
        except:
                self._message = 'Información incompleta'
                return False
        self._message = 'Documento creado exitosamente'
        return True
