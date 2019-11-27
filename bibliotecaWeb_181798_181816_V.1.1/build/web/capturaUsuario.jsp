<%-- 
    Document   : capturaUsuario
    Created on : 24/11/2019, 11:23:52 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura Usuario</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuUsuarios.jspf" %>

        <main>
            <h1>Captura Usuario</h1>
        </main>

        <form action="agregaUsuario" method="post" name="capturaUsuario">
            <div class="tabla">
                <div class="fila">
                    <div class="celda derecha">
                        <label for="credencialId">Número de Credencial</label>
                    </div>
                    <div class="celda">
                        <input type="text" id="credencialId" name="credencial" value="${param.credencial}" size="7" readonly>
                    </div>
                    <div class="celda">&nbsp;</div>
                </div>
                <div class="fila">
                    <div class="celda derecha">
                        <label for="nombreId">Nombre *</label>
                    </div>
                    <div class="celda">
                        <input type="text" id="nombreId" name="nombre" value="${param.nombre}" size="35" maxlength="35" required placeholder="Nombre del Usuario">
                    </div>
                    <div id="msjNombre" class="celda ${mensajes.nombre.claseMensaje}">
                        ${mensajes.nombre.mensaje}
                    </div>
                </div>
                <div class="fila">
                    <div class="celda derecha">
                        <label for="direccionId">Direcci&oacute;n *</label>
                    </div>
                    <div class="celda">
                        <input type="text" id="direccionId" name="direccion" value="${param.direccion}" size="35" maxlength="35" required placeholder="Direccion del Usuario">
                    </div>
                </div>
                <div id="msjDireccion" class="celda ${mensajes.direccion.claseMensaje}">
                    ${mensajes.direccion.mensaje}
                </div>
                <div id="fila">
                    <div class="celda derecha">
                        <label for="telefonoId">Tel&eacute;fono</label>
                    </div>
                    <div class="celda">
                        <input type="text" id="telefonoId" name="telefono" value="${param.telefono}" size="10" maxlength="10" placeholder="Ej. 6441486214">
                    </div>
                    <div id="msjTelefono" class="celda ${mensajes.telefono.claseMensaje}">
                        ${mensajes.telefono.mensaje}
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
    </body>
</html>
