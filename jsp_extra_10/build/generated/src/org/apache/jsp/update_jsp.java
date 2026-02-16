package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <form method=\"post\">\n");
      out.write("            Customer Name:<input type=\"text\" name=\"name\"><br>\n");
      out.write("            Customer address:<input type=\"text\" name=\"address\"><br>\n");
      out.write("            Customer Mobile no:<input type=\"text\" name=\"mobile\"><br>\n");
      out.write("            Customer Email:<input type=\"email\" name=\"email\"><br>\n");
      out.write("             Customer City:<input type=\"text\" name=\"city\" list=\"exampleList\"><br>\n");
      out.write("            <datalist id=\"exampleList\">\n");
      out.write("                <option value=\"Amreli\">  \n");
      out.write("                <option value=\"Surat\">\n");
      out.write("                <option value=\"Rajkot\">\n");
      out.write("                <option value=\"Ahemdabad\">\n");
      out.write("            </datalist>\n");
      out.write("             <input type=\"submit\">\n");
      out.write("        </form>\n");
      out.write("         ");

             int m=0;
            int id=Integer.parseInt(request.getParameter("id"));
            String n=request.getParameter("name");
            String a=request.getParameter("address");
            try{
             m = Integer.parseInt(request.getParameter("mobile"));
            }catch(NumberFormatException n2)
            {
                out.println(n2);
            }
            String e=request.getParameter("email");
            String c=request.getParameter("city");
             
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
                Statement st = con.createStatement();
                st.execute("UPDATE cust SET c_name=?,c_address=?,c_phone=?,c_email=?,c_city=? WHERE c_id='"+id+"' ");
              // st.execute("UPDATE cust SET c_name='"+n+"',c_address='"+a+"',c_phone='"+m+"',c_email='"+e+"',c_city='"+c+"' WHERE c_id='"+id+"' ");

                out.println("Updated...");
            }catch(Exception e2)
            {
                out.println(e2);
            }
          
      out.write("\n");
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
