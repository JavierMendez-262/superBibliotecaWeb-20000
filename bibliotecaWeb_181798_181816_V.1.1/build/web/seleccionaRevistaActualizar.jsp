<%-- 
    Document   : seleccionaRevistaActualizar
    Created on : 24/11/2019, 11:00:16 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Biblioteca Web - Versi&oacute;n: Selecciona Revista a Actualizar</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuRevistas.jspf" %>
        
        <main>
            <form action="obtenCancion" method="post">
                <table class="bicolor">
                    <caption>
                        Seleccion la revista a actualizar
                    </caption>
                    
                    <tr>
                        <th>&nbsp;</th>
                        <th>ISBN</th>
                        <th>T&iacute;</th>
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
                <br>
                <table class="centrada">
                    <tr>
                        <td><input type="submit" name="boton" value="Continuar"></td>
                        <td><input type="reset" value="Limpiar"></td>
                    </tr>
                </table>
            </form>
        </main>
    </body>
</html>
