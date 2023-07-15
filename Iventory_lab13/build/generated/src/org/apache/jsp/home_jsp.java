package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("        <title>home</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("table, td, th {\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <center> <body>\n");
      out.write("    <table border=\"0\" style =\"text-align:center\" width = \"100%\">\n");
      out.write("            \n");
      out.write("                <tr><td>HOME</td><td> | </td><td>SERVICE</td><td> | </td><td>ABOUT</td><td> | </td><td>LOGIN</td>\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("                <tr> <td colspan=\"7\" style=\"text-align:center\"><br><br><p>Welcome to ANC Express Tracking Parcel<br>\n");
      out.write("                            ~Always Fast, On Time and Reliable~</p>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("               \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                </tr>\n");
      out.write("           \n");
      out.write("        </table>\n");
      out.write("    <center>\n");
      out.write("         <form method=\"POST\">\n");
      out.write("             <table border=\"0\" style =\"text-align:center\" width = \"100%\">\n");
      out.write("                 <tr><td>YOUR PARCEL ID : <input type=\"text\" name=\"shipid\" value=\"---Enter here---\" /></td></tr>\n");
      out.write("                 <tr><td><input type=\"submit\" value=\"Check\" name=\"check\" /></td></tr>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <!--<table border=\"1\" style =\"text-align:center\" width = \"100%\">\n");
      out.write("            \n");
      out.write("                <tr><td>Date/Time</td><td>Status</td><td>Location</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>24 July 2023, 08:00:00 AM</td><td>Item posted over the counter</td><td>KIOSK Tesco Shah Alam</td>\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("               \n");
      out.write("           \n");
      out.write("        </table>-->\n");
      out.write("    </body>\n");
      out.write("    </center>\n");
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
