<%-- 
    Document   : despliegaUsuarios
    Created on : 24/11/2019, 11:24:49 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@page import="objetosNegocio.*" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Despliega Usuarios</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuUsuarios.jspf" %>
        
        <main>
            <table class="bicolor">
                <caption>${listaUsuarios.tituloTabla}</caption>
                <tr>
                    <th>Credencial</th>
                    <th>Nombre</th>
                    <th>Direcci&oacute;n</th>
                    <th>Tel&eacute;fono</th>
                </tr>
                <c:forEach items="${listaUsuarios.lista}" var="usuario">
                    <tr>
                        <td>${usuario.credencial}</td>
                        <td>${usuario.nombre}</td>
                        <td>${usuario.direccion}</td>
                        <td>${usuario.telefono}</td>
                    </tr>
                </c:forEach>
            </table>
        </main>
    </body>
</html>
