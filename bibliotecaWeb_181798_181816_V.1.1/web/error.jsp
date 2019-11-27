<%-- 
    Document   : error
    Created on : 25/11/2019, 08:48:39 AM
    Author     : JavierMéndez & EnriqueMendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Web - Versión JSP: P&aacute;gina de Error</title>
    </head>
    <body>
        <div class="error">
            <table class="centrada">
                <tr>
                    <th class="error">Error:</th>
                    <td class="msjError">${pageContext.exception.message}</td>
                </tr>
                <tr>
                    <th class="error">Causa:</th>
                    <td class="msjError">${pageContext.exception.cause.message}</td>
                </tr>
            </table>
        </div>
    </body>
</html>
