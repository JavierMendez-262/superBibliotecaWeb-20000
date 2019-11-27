<%-- 
    Document   : capturaRevistaDevolver
    Created on : 24/11/2019, 11:27:30 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura Revista Devolver</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPrestamos.jspf" %>

        <main>
            <h1>Captura Revista a Devolver</h1>

            <form action="devolverRevista" method="post" name="devolverRevista">
                <div class="tabla">
                    <div class="fila">
                        <div class="celda derecha">
                            Revista *
                        </div>
                        <div class="celda">
                            <select name="revista" required>
                                <option value="">Ninguno</option>
                                <c:forEach items="${listaPrestamosRevistas.lista}" var="revista">
                                    <c:choose>
                                        <c:when test="${param.revista.isbn == revista.isbn}">
                                            <option selected value="${revista.isbn}">${revista.titulo}
                                            </option>
                                        </c:when>
                                        <c:when test="${param.revista.isbn != revista.isbn}">
                                            <option value="${revista.isbn}">${revista.titulo}
                                            </option>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                        <div id="msjRevista" class="celda">
                            &nbsp;
                        </div>
                    </div>
                </div>
                <br>
                <div class="tabla" >
                    <div class="fila">
                        <div class="celda">
                            <input type="submit" name="boton" value="Continuar">
                        </div>
                        <div class="celda">
                            <input type="reset" value="Limpiar">
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </body>
</html>
