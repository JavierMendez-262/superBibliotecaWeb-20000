<%-- 
    Document   : prestamos
    Created on : 24/11/2019, 07:56:27 PM
    Author     : JavierMéndez & EnriqueMendoza

    Esta página JSP es la página con el menú prestamos de la aplicación
    Web BibliotecaWeb versión JSTL. Despliega el menú de opciones.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>Biblioteca Web: Versión JSTL: Menú Prestamos</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPrestamos.jspf" %>
    </body>
</html>
