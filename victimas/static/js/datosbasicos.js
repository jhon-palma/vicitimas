function extra(extranjero)
{
    var vlr = extranjero;
    if(vlr == "True" )
    {
        document.formulario.tipod.options[4].selected = true
    }
    else
    {
        document.formulario.tipod.options[0].selected = true
        document.formulario.tipod.options[4].disabled = true
    }
}

function existe(numeroDocumento)
{
    var doc = numeroDocumento;

    $.ajax({
        data : {'doc':doc},
        url: '/beneficiario/beneficiarioAjax',
        type: 'get',
        success: function(data) {
            if(data['valido'] )
            {
                swal({
                    title: "Error!",
                    text: "Este beneficiario ya existe!",
                    type: "error",
                    confirmButtonText: "Entendido",

                });
                document.formulario.numeroDocumento.focus();
            }
            else
            {
                return false;
            }
        }
    });
}

function existed(docCabeza)
{
    var doc = docCabeza;

    $.ajax({
        data : {'doc':doc},
        url: '/beneficiario/beneficiarioAjax',
        type: 'get',
        success: function(data) {
            if(data['valido'] )
            {
                return false;
            }
            else
            {
                swal({
                    title: "Error!",
                    text: "Cabeza de hogar no existe!",
                    type: "error",
                    confirmButtonText: "Entendido",
                });
            }
        }
    });
}

function funcion(valor){
    if(valor == 'False' ){
        document.formulario.parentesco.disabled = false;
        document.formulario.parentesco.required = true;
        document.formulario.parentesco.selectedIndex = null;
        document.formulario.docCabeza.required = true;
    }
    else{
        var ndoc = document.formulario.numeroDocumento.value;
        document.formulario.parentesco.options[1].selected = true;
        document.formulario.docCabeza.value = ndoc;
    }
}
