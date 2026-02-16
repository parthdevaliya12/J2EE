

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class url_3 extends HttpServlet {

 
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        String n=req.getParameter("uname");
        out.println("Hello"+" "+n);
          out.close();
        }
    }

    


