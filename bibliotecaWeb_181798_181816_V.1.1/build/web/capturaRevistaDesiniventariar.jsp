<%-- 
    Document   : capturaRevistaDesiniventariar
    Created on : 24/11/2019, 11:25:16 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura Revista Desinventariar</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuInventario.jspf" %>

        <main>
            <h1>Captura Revista a Desinventariar</h1>

            <form action="desinventariarRevista" method="post" name="desinventariarRevista">
                <div class="tabla">
                    <div class="fila">
                        <div class="celda derecha">
                            Revista *
                        </div>
                        <div class="celda">
                            <select name="revista" required>
                                <option value="">Ninguno</option>
                                <c:forEach items="${listaInventarioRevistas.lista}" var="revista">
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
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="cantidadId">Cantidad *</label>
                        </div>
                        <div class="celda">
                            <input type="number" id="cantidadId" name="cantidad" value="1" size="5" min="1" max="99" placeholder="Cantidad de las Revista a Inventariar">
                        </div>
                        <div id="msjCantidad" class="celda ${mensajes.cantidad.claseMensaje}">
                            ${mensajes.cantidad.mensaje}
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
