<%-- 
    Document   : editaRevista
    Created on : 24/11/2019, 09:01:48 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Web - Versión JSP: Captura Revista</title>
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuRevistas.jspf" %>

        <main>
            <h1>Captura Revista</h1>

            <form action="agregaRevista" method="post" name="capturaCancion" >
                <div class="tabla">
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="isbnId">ISBN</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="isbnId" name="isbn" value="${revista.isbn}" size="13" readonly>
                        </div>
                        <div class="celda">&nbsp;</div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="tituloId">T&iacute;tulo *</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="tituloId" name="titulo" value="${revista.titulo}" size="35" maxlength="35" required placeholder="T&iacute;tulo de la Revista">
                        </div>
                        <div id="msjTitulo" class="celda ${mensajes.titulo.claseMensaje}">
                            ${mensajes.titulo.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="editorialId">Editorial *</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="editorialId" name="editorial" value="${revista.editorial}" size="35" maxlength="35" required placeholder="Editorial de la Revista">
                        </div>
                        <div id="msjEditorial" class="celda ${mensajes.editorial.claseMensaje}">
                            ${mesajes.editorial.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="clasificacionId">Clasificaci&oacute;n *</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="clasificacionId" name="clasificacion" value="${revista.clasificacion}" size="20" maxlength="20" required placeholder="Clasificaci&oacute;n de la Revista">
                        </div>
                        <div id="msjClasificacion" class="celda ${mensajes.clasificacion.claseMensaje}">
                            ${mensajes.clasificacion.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="periodicidadId">Periodicidad</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="periodicidadId" name="periodicidad" value="${revista.periodicidad}" size="35" maxlength="35" placeholder="Periodicidad de la Revista">
                        </div>
                        <div id="msjPeriodicidad" class="celda ${mensajes.clasificacion.claseMensaje}">
                            ${mensajes.periodicidad.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="fechaId">Fecha</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="fechaId" name="fecha" value="${revista.fecha}" size="10" placeholder="dd/mm/aaaa">
                        </div>
                        <div id="msjFecha" class="celda ${mensajes.fecha.claseMensaje}" >
                            ${mensajes.fecha.mensaje}
                        </div>
                    </div>
                </div>
                <br>
                <div class="tabla" >
                    <div class="fila">
                        <div class="celda">
                            <input type="submit" name="boton" value="Continuar">
                        </div>
                        <div class="celda">
                            <input type="reset" value="Limpiar">
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </body>
</html>
