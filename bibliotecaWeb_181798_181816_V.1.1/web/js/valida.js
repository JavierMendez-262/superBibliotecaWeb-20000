/* 
 * Funciones de validacion de formularios de Javascript.
 */

var nbsp = 160;               // caracter de espacio
var node_text = 3;            // Tipo de nodo de texto de DOM 
var cadenaVacia = /^\s*$/;
var campoEnfocarGlobal;       // Variable global para almacenar el campoEnfocar 

//
// enfocaAtrasado() 
// 
// Hace que el elemento almacenado en la variable global 
// campoValidarGlobalDelayed obtenca el foco. Ajuste para remediar un bug de IE 
// y otros 
// 
function enfocaAtrasado() {
    campoEnfocarGlobal.focus();
}

//
// enfoca()
// Hace que el elemento del parametro obtenga el foco
// 
// Parametros: 
//     - campoEnfocar:  Elemento a obtener el foco 
function enfoca(campoEnfocar) {
    // Guarda campoEnfocar en la variable global para conservar el valor cuando
    // la funcion termine   
    campoEnfocarGlobal = campoEnfocar;
    setTimeout('enfocaAtrasado()', 100);
}

//
// trim()
//
//Elimina los caracteres blancos al principio o final de la cadena del parametro
//
// Parametros
//      - str: Cadena a procesar
//      
function trim(str) {
    return str.replace(/^\s+|\s+$/g, '');
}

//
// despliegaMensaje()
// 
// Despliega un mensaje de error o aviso
// 
// Parametros
//      - idMensaje:    id del elemento en que se desplegara el mensaje
//      - claseMensaje: Clase asociada al mensaje para usarse en CSS, warn/error.
//      - mensaje:      Mensaje a desplegar
//      
//  Debe llamarse antes a la funcion validacionComun
//
function despliegaMensaje(idMensaje, casleMensaje, mensaje) {
    var mensajeDesplegar;
    if (cadenaVacia.test(mensaje))
        mensajeDesplegar = String.formCharCode(nbsp);
    else
        mensajeDesplegar = mensaje;

    var elem = document.getElementById(idMensaje);
    elem.firstChild.nodeValue = mensajeDesplegar;

    elem.className = clasMensaje;
}

//
// validacionComun()
// 
// Codigo comun para todas las funciones de validacion: 
// Si la version del navegador es vieja, pasa la validacion para que la 
// validacion la haga el servidor.
// 
// Parametros:
//      - campoValidar: Elemento a validar
//      - idMensaje:    id del elemento en que se desplegara el mensaje
//      - requerido: Campo requerido
//      
// Regresa:
//      - true:     Pasa la validacion
//      - false:    Falla la validacion
//      - prosigue: Continua con la siguiente validacion
//      
var prosigue = 2;

function validacionComun(campoValidar, idMensaje, requerido) {
    if (!document.getElementById)
        return true;

    var elem = document.getElementById(idMensaje);
    if (!elem.firstChild)
        return true;
    if (elem.firstChild.nodeType !== node_text)
        return true;

    if (cadenaVacia.test(campoValidar.value)) {
        if (requerido) {
            despliegaMensaje(idMensaje, "msgError", "Error: Se requiere un valor");
            enfoca(campoValidar);
            return false;
        } else {
            despliegaMensaje(idMensaje, "msjAviso", "");
            return true;
        }
    }
    return prosigue;
}

//
// validaPresente()
// 
// Valida si se ha tecleado algo en el campo de texto
// 
// Parametros:
//      - campoValidar: Elemento a validar
//      - idMensaje:    Id del elemento en que se desplegara el mensaje
//      
//  Regresa:
//      true si se ha tecleado algo, falso en caso contrario
//      
function validaPresente(campoValidar, idMensaje) {
    var stat = validacionComun(campoValidar, idMensaje, true);
    if (stat !== prosigue)
        return stat;

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

//
// validaCadena()
// 
// Valida una cadena. Una cadena esta formada de caracteres alfanumericos y
// tiene una extension maxima
// 
// Parametros:
//      - longMax: Longitud  maxima de una cadena
//      - campoValidar: Elemento a validar
//      - idMensaje:    id del elemento en que se desplegara el mensaje
//      - requerido: campo requerido
//      
// Regresa:
//      true si es una clave valida, false en caso contrario
//
function validaCadena(longMax, campovalidar, idMensaje, requerido) {
    var stat = validacionComun(campoValidar, idMensaje, requerido);
    if (stat != prosigue)
        return stat;

    var cadena = trim(campoValidar.value);
    var reCadena = new RegExp('^\\w{1,' + longMax + '}$');

    if (!reCadena.test(cadena)) {
        despliegaMensaje(idMensaje, "msjError", "Error: Cadena muy larga");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

//
// validaClave()
//
// Valida una clave. Una clave esta formada de 3 letras mayúsculas y 4 digitos
//
// Parametros:
//    - campoValidar: Elemento a validar 
//    - idMensaje:    id del elemento en que se desplegara el mensaje 
// 
// Regresa:
//    true si es una clave valida, false en caso contrario 
//
function validaClave(campoValidar, idMensaje) {
    var stat = validacionComun(campoValidar, idMensaje, true);
    if (stat != prosigue)
        return stat;

    var clave = trim(campoValidar.value);
    var reClave = /^[A-Z]{3}[0-9]{4}$/;

    if (!reClave.test(clave)) {
        despliegaMensaje(idMensaje, "msjError", "Error: Clave no valida");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

// 
// validaEntero() 
// 
// Valida un entero. El entero tiene de 1 a numDigitos digitos
// 
// Parametros:
//    - numDigitos:   Número máximo de digitos
//    - campoValidar: Elemento a validar 
//    - idMensaje:    id del elemento en que se desplegara el mensaje
//    - requerido:    Campo requerido
//
// Regresa:
//    true si ok 
//
function validaEntero(numDigitos, campoValidar, idMensaje, requerido) {
    var stat = validacionComun(campoValidar, idMensaje, requerido);
    if (stat != prosigue)
        return stat;

    var entero = trim(campoValidar.value);
    var reEntero = /^\d+$/;

    if (!reEntero.test(entero)) {
        despliegaMensaje(idMensaje, "msjError", "Error: No es un entero");
        enfoca(campoValidar);
        return false;
    }

    reEntero = new RegExp('^\\d{1,' + numDigitos + '}$');

    if (!reEntero.test(entero)) {
        despliegaMensaje(idMensaje, "msjError", "Error: Numero muy largo");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

//
// validaEnteroRango() 
//
// Valida un entero en el rango [min, max].
// Parametros:  
//    - min:          Limite inferior del entero 
//    - max:          Limite superior del entero
//    - campoValidar: Elemento a validar 
//    - idMensaje:    id del elemento en que se desplegara el mensaje 
//    - requerido:    Campo requerido 
//
// Regresa:
//    true si ok
//
function validaEnteroRango(min, max, campoValidar, idMensaje, requerido) {
    var stat = validacionComun(campoValidar, idMensaje, requerido);
    if (stat != prosigue)
        return stat;

    var entero = trim(campoValidar.value);
    var reEntero = /^\d+$/;

    if (!reEntero.test(entero)) {
        despliegaMensaje(idMensaje, "msjError", "Error: No es un entero");
        enfoca(campoValidar);
        return false;
    }

    reEntero = new RegExp('^\\d{' + min + ', ' + max + '}$');

    if (!reEntero.test(entero)) {
        despliegaMensaje(idMensaje, "msjError", "Error: Entero fuera de rango");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

//
// validaFecha() 
//
// Valida una fecha en el formato dd/mm/aaaa. 
//
// Parametros: 
//    - campoValidar: Elemento a validar
//    - idMensaje:    id del elemento en que se desplegara el mensaje
//    - requerido:    Campo requerido 
//
// Regresa: 
//    true si ok
//
function validaFecha(campoValidar, idMensaje, requerido) {
    var stat = validacionComun(campoValidar, idMensaje, requerido);
    if (stat != prosigue)
        return stat;

    var fecha = trim(campoValidar.value);
    var reFecha = /^(([0-2]?\d)|([3][0-1]))\/(([0]?\d)|([1][0-2]))\/\d{4}$/

    if (!reFecha.test(fecha)) {
        despliegaMensaje(idMensaje, "msjError", "Error: Fecha no valida");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}

//
// validaEmail()
//
// Valida una direccion de correo
//
// Parametros:
//    - campoValidar: Elemento a validar
//    - idMensaje:    id del elemento en que se desplegara el mensaje
//    - requerido:    Campo requerido 
//
// Regresa:
//    true si ok 
// 
function validaEmail(campoValidar, idMensaje, requerido) {
    var stat = validacionComun(campoValidar, idMensaje, requerido);
    if (stat != prosigue)
        return stat;

    var email = trim(campoValidar.value);
    var reEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

    if (!reEmail.test(email)) {
        despliegaMensaje(idMensaje, "msjError", "Error: E-mail no válido");
        enfoca(campoValidar);
        return false;
    }

    despliegaMensaje(idMensaje, "msjAviso", "");
    return true;
}
