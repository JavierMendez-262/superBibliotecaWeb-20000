<%-- 
    Document   : despliegaPrestamosRevistas
    Created on : 24/11/2019, 11:28:26 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Despliega Prestamos Revistas</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPrestamos.jspf" %>
        
        <main>
            <table class="bicolor">
                <caption>
                    ${listaPrestamosRevistas.tituloTabla}
                </caption>
                
                <tr>
                    <th colspan="2">Revista</th>
                    <th colspan="2">Usuario</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th>ISBN</th>
                    <th>T&iacute;tulo</th>
                    <th>Número de Credencial</th>
                    <th>Nombre</th>
                    <th>Fecha del Prestamo</th>
                    <th>Tiempo del Prestamo</th>
                </tr>
                
                <c:forEach items="${listaInventarioRevistas.lista}" var="prestamo">
                    <tr>
                        <td>${prestamo.revista.isbn}</td>
                        <td>${prestamo.revista.titulo}</td>
                        <td>${prestamo.usuario.credencial}</td>
                        <td>${prestamo.usuario.nombre}</td>
                        <td>${prestamo.fecha}</td>
                        <td>${prestamo.tiempo}</td>
                    </tr>
                </c:forEach>
            </table>
        </main>
    </body>
</html>
