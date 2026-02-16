

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class cookie_3 extends HttpServlet {


    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
            String n=req.getParameter("username");
            out.println("Welcome"+" "+n);
            
            Cookie ck[]=req.getCookies();
            out.println("Hello"+" "+ck[0].getValue());
            
            
            
           
        }
  

}

    


