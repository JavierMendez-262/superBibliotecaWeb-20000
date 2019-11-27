<%-- 
    Document   : despliegaRevistas
    Created on : 24/11/2019, 10:23:48 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="objetosNegocio.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <title>Biblioteca Web - Versión JSP: Despliega Revistas</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuRevistas.jspf" %>
        
        <main>
            <table class="bicolor">
                <caption>
                    ${listaRevistas.tituloTabla}
                </caption>
                
                <tr>
                    <th>ISBN</th>
                    <th>T&iacute;tulo</th>
                    <th>Clasificaci&oacute;n</th>
                    <th>Periodicidad</th>
                    <th>Editorial</th>
                    <th>Fecha</th>
                </tr>
                
                <c:forEach items="${listaRevistas.lista}" var="revista">
                    <tr>
                        <td>${revista.isbn}</td>
                        <td>${revista.titulo}</td>
                        <td>${revista.editorial}</td>
                        <td>${revista.clasificacion}</td>
                        <td>${revista.periodicidad}</td>
                        <td>${revista.fecha}</td>
                    </tr>
                </c:forEach>
            </table>
        </main>
    </body>
</html>
