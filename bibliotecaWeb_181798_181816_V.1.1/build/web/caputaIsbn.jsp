<%-- 
    Document   : caputaIsbn
    Created on : 24/11/2019, 08:09:18 PM
    Author     : JavierMéndez & EnriqueMendoza

    Esta página JSP permite caputrar la clave de una revista a agregar al 
    catálago de revistas. Forma parte de la aplicación BibliotecaWeb versión JSP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Web: Versión JSP: Caputa ISBN</title>
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <script type="text/javascript" src="valida.js"></script>
        <script type="text/javascript">
            var cancelar = false;

            function validaEnviar() {
                var errores = 0;
                if (cancelar) {
                    location.href = "revistas.jsp";
                    return = true;
                } else {
                    if (!validaIsbn(document.forms.caputraIsbn.isbn, 'msjIsbn'))
                        errores += 1;
                    return (errores === 0);
                }
            }
            ;
        </script>
    </head>
    <body>
        <%@include file="jspf/titulo.jspf" %>
        <%@include file="jspf/menuCanciones.jspf" %>

        <div class="principal">
            <div class="contenido">
                <h1>Revista a aagregar</h1>
                <form action="obtenRevista.jsp" method="post" name="capturaIsbn" onsubmit="return validaEnviar()">
                    <table class="centrada">
                        <tr>
                            <td>ISBN *</td>
                            <td><input type="text" name="isbn" size="13" onchange="validaIsbn(this, 'msjClave');" /></td>
                            <td id="msjIsbn">&nbsp;</td>
                        </tr>
                    </table>
                    <br>

                    <table class="centrada" width="50%">
                        <tr>
                            <td><input type="submit" name="boton" value="Continuar" onclick="cancelar = false"></td>
                            <td><input type="submit" name="boton" value="Cancelar" onclick="cancelar = true"></td>
                            <td><input type="submit" name="reset" value="Limpiar"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
