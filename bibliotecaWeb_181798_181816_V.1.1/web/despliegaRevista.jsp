<%-- 
    Document   : despliegaRevista
    Created on : 24/11/2019, 10:23:36 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Biblioteca Web - Versión JSP: Despliega Revista</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuRevistas.jspf" %>
        
        <main>
            <h1>Revista Existente</h1>
            
            <table class="centrada">
                <tr>
                    <td class="derecha">ISBN</td>
                    <td class="gris">${revista.isbn}</td>
                </tr>
                <tr>
                    <td class="derecha">T&iacute;tulo</td>
                    <td class="gris">${revista.titulo}</td>
                </tr>
                <tr>
                    <td class="derecha">Editorial</td>
                    <td class="gris">${revista.editorial}</td>
                </tr>
                <tr>
                    <td class="derecha">Clasificaci&oacute;n</td>
                    <td class="gris">${revista.clasificacion}</td>
                </tr>
                <tr>
                    <td class="derecha">Periodicidad</td>
                    <td class="gris">${revista.periodicidad}</td>
                </tr>
                <tr>
                    <td class="derecha">Fecha</td>
                    <td class="gris">${revista.fecha}</td>
                </tr>
            </table>
        </main>
    </body>
</html>
