<%-- 
    Document   : capturaPeriodo
    Created on : 24/11/2019, 11:28:43 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura Periodo</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPrestamos.jspf" %>

        <main>
            <h1>Periodo de los Prestamos de Revistas</h1>

            <form action="obtenPrestamosPeriodo" method="post" name="capturaPeriodo">
                <div class="tabla">
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="fechaDesdeId">Fecha inicial (dd/mm/aaaa) *</label>
                        </div>
                        <div class="celda">
                            <input type="date" id="fechaDesdeId" name="desde" size="20" required>
                        </div>
                        <div id="msjDesde" class="celda ${mensajes.desde.claseMensaje}">
                            ${mensajes.desde.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="fechaHastaId">Fecha final (dd/mm/aaaa) *</label>
                        </div>
                        <div class="celda">
                            <input type="date" id="fechaHastaId" name="hasta" size="20" required>
                        </div>
                        <div id="msjHasta" class="celda ${mensajes.hasta.claseMensaje}">
                            ${mensajes.hasta.mensaje}
                        </div>
                    </div>
                </div>
                <br />
                <div class="tabla" >
                    <div class="fila">
                        <div class="celda">
                            <input type="submit" name="boton" value="Continuar" />
                        </div>
                        <div class="celda">
                            <input type="reset" value="Limpiar" />
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </body>
</html>
