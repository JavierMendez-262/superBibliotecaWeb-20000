<%-- 
    Document   : caputraNumCredencial
    Created on : 24/11/2019, 11:23:32 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura N&uacute;mero Credencial</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuUsuarios.jspf" %>

        <main>
            <h1>Usuario a agregar</h1>

            <form action='obtenUsuario' method="post" name="capturaCredencial">
                <div class="tabla">
                    <div class="fila">
                        <div class="celda">
                            <label for="credencialId">N&uacute;mero Credencial *</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="credencialId" name="credencial" value="${param.credencial}" size="7" pattern="^[A-Z]{3}[0-9]{4}$" title="Tres letras may&uacute;sculas seguidas de 4 d&iacute;gitos"
                                   placeholder="ABC1234" required>
                        </div>
                        <div id="msjCredencial" class="celda ${mensajes.credencial.claseMensaje}">
                            ${mensajes.credencial.mensaje}
                        </div>
                    </div>
                </div>
                <br>
                <div class="tabla">
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
