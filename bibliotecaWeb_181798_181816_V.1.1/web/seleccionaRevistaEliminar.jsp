<%-- 
    Document   : seleccionaRevistaEliminar
    Created on : 24/11/2019, 11:22:54 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Biblioteca Web - Versi&oacute;n: Selecciona Revista a Eliminar</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuRevistas.jspf" %>
        
        <main>
            <form action="eliminaCanciones" method="post">
                <table class="bicolor">
                    <caption>Selecciona las canciones a eliminar</caption>
                    
                    <tr>
                        <th>&nbsp;</th>
                        <th>ISBN</th>
                        <th>T&iacute;tulo</th>
                        <th>Editorial</th>
                        <th>Clasificaci&oacute;n</th>
                        <th>Periodicidad</th>
                        <th>Fecha</th>
                    </tr>
                    
                    <c:forEach items="${listaCanciones.lista}" var="revista">
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
                        <td>
                            <input type="submit" name="boton" value="Continuar">
                        </td>
                        <td>
                            <input type="reset" value="Limpiar">
                        </td>
                    </tr>
                </table>
            </form>
        </main>
    </body>
</html>
