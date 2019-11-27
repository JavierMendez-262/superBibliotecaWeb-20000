<%-- 
    Document   : despliegaInventarioRevistas
    Created on : 24/11/2019, 11:25:41 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Despliega Inventario Revistas</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuInventario.jspf" %>
        
        <main>
            <table class="bicolor">
                <caption>
                    ${listaInventarioRevistas.tituloTabla}
                </caption>
                
                <tr>
                    <th colspan="6">Revista</th>
                    <th></th>
                </tr>
                <tr>
                    <th>ISBN</th>
                    <th>T&iacute;tulo</th>
                    <th>Editorial</th>
                    <th>Clasificaci&oacute;n</th>
                    <th>Periodicidad</th>
                    <th>Fecha</th>
                    <th>Cantidad</th>
                </tr>
                
                <c:forEach items="${listaInventarioRevistas.lista}" var="revistaInventariada">
                    <tr>
                        <td>${revistaInventariada.revista.isbn}</td>
                        <td>${revistaInventariada.revista.titulo}</td>
                        <td>${revistaInventariada.revista.editorial}</td>
                        <td>${revistaInventariada.revista.clasificacion}</td>
                        <td>${revistaInventariada.revista.periodicidad}</td>
                        <td>${revistaInventariada.revista.fecha}</td>
                        <td>${revistaInventariada.cantidad}</td>
                    </tr>
                </c:forEach>
            </table>
        </main>
    </body>
</html>
