<%-- 
    Document   : capturaRevistaPrestar
    Created on : 24/11/2019, 11:27:13 PM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>Biblioteca Web - Versión JSP: Captura Revista Prestar</title>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuPrestamos.jspf" %>

        <main>
            <h1>Captura Revista a Prestar</h1>

            <form action="prestarRevista" method="post" name="prestarRevista">
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
                        <div class="celda">
                            <select name="usuario" required>
                                <option value="">Ninguno</option>
                                <c:forEach items="${listaUsuarios.lista}" var="usuario">
                                    <c:choose>
                                        <c:when test="${param.usuario.credencial == revista.credencial}">
                                            <option selected value="${revista.credencial}">${revista.nombre}
                                            </option>
                                        </c:when>
                                        <c:when test="${param.revista.credencial != revista.credencial}">
                                            <option value="${revista.credencial}">${revista.nombre}
                                            </option>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                        <div id="msjusuario" class="celda">
                            &nbsp;
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="fechaId">Fecha</label>
                        </div>
                        <div class="celda">
                            <input type="text" id="fechaId" name="fecha" value="${param.fecha}" size="10" placeholder="dd/mm/aaaa">
                        </div>
                        <div id="msjFecha" class="celda ${mensajes.fecha.claseMensaje}" >
                            ${mensajes.fecha.mensaje}
                        </div>
                    </div>
                    <div class="fila">
                        <div class="celda derecha">
                            <label for="tiempoId">Tiempo del Prestamo *</label>
                        </div>
                        <div class="celda">
                            <input type="number" id="tiempoId" name="tiempo" value="1" size="5" min="1" max="5" placeholder="Tiempo del Prestamo">
                        </div>
                        <div id="msjPrestamo" class="celda ${mensajes.prestamo.claseMensaje}">
                            ${mensajes.prestamo.mensaje}
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
