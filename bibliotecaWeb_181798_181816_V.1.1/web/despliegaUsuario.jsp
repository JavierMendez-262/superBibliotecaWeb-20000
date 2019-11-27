<%-- 
    Document   : despliegaUsuario
    Created on : 24/11/2019, 11:24:04 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Despliega Usuario</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuUsuarios.jspf" %>

        <main>
            <h1>Usuario Existente</h1>

            <table class="centrada">
                <tr>
                    <td class="derecha">N&uacute;mero Credencial</td>
                    <td class="gris">${usuario.credencial}</td>
                </tr>
                <tr>
                    <td class="derecha">Nombre</td>
                    <td class="gris">${usuario.credencial}</td>
                </tr>
                <tr>
                    <td class="derecha">Direcci&oacute;n</td>
                    <td class="gris">${usuario.direccion}</td>
                </tr>
                <tr>
                    <td class="derecha">Tel&eacute;fono</td>
                    <td class="gris">${usuario.telefono}</td>
                </tr>
            </table>
        </main>
    </body>
</html>
