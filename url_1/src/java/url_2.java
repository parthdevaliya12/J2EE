

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class url_2 extends HttpServlet {

 
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        String n=req.getParameter("username");
        out.println("Welcome"+" "+n);
        out.println("<a href='url_3?uname='+n+'>visit</a>");
          out.close();
        }
    }

    


