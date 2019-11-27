package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class capturaNumCredencial_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/jspf/titulo.jspf");
    _jspx_dependants.add("/jspf/menuUsuarios.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilos.css\"/>\n");
      out.write("        <title>Biblioteca Web - Versión JSP: Captura N&uacute;mero Credencial</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"encabezado\">\n");
      out.write("    <div class=\"titulo\">\n");
      out.write("        ");
      out.write("\n");
      out.write("        <h1>BibliotecaWeb</h1>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<div id='menuppal'>\n");
      out.write("    <ul id='menu'>\n");
      out.write("        <li><a href=\"control?tarea=agregarUsuario\">Agregar usuario</a></li>\n");
      out.write("        <li><a href=\"index.jsp\">Regresar al menú principal</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <h1>Usuario a agregar</h1>\n");
      out.write("\n");
      out.write("            <form action='obtenUsuario' method=\"post\" name=\"capturaCredencial\">\n");
      out.write("                <div class=\"tabla\">\n");
      out.write("                    <div class=\"fila\">\n");
      out.write("                        <div class=\"celda\">\n");
      out.write("                            <label for=\"credencialId\">N&uacute;mero Credencial *</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"celda\">\n");
      out.write("                            <input type=\"text\" id=\"credencialId\" name=\"credencial\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.credencial}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" size=\"7\" pattern=\"^[A-Z]{3}[0-9]{4}$\" title=\"Tres letras may&uacute;sculas seguidas de 4 d&iacute;gitos\"\n");
      out.write("                                   placeholder=\"ABC1234\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"msjCredencial\" class=\"celda ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajes.credencial.claseMensaje}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajes.credencial.mensaje}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <div class=\"tabla\">\n");
      out.write("                    <div class=\"fila\">\n");
      out.write("                        <div class=\"celda\">\n");
      out.write("                            <input type=\"submit\" name=\"boton\" value=\"Continuar\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"celda\">\n");
      out.write("                            <input type=\"reset\" value=\"Limpiar\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </main>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
