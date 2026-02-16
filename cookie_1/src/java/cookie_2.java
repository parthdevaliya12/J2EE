

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class cookie_2 extends HttpServlet {


    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
            String n=req.getParameter("username");
            out.println("Welcome"+" "+n);
            
            Cookie ck=new Cookie("uname",n);
            res.addCookie(ck);
            
            out.println("<form action='cookie_3'>");
            out.println("<input type='submit' value='send'>");
            out.println("</form>");
            
           
        }
  

}

    


