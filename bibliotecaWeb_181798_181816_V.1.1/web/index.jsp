<%-- 
    Document   : index
    Created on : 24/11/2019, 06:19:40 PM
    Author     : JavierMéndez & EnriqueMendoza

    Esta página JSP es la página inicial de la aplicación Web AmanteMusicaWeb
    Despliega el menú de opciones.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web: Versión JSP</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPpal.jspf" %>
    </body>
</html>
