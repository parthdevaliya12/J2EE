

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class hidden_ex_2 extends HttpServlet {

   
    public void doGet(HttpServletRequest req,HttpServletResponse res)
    {
          try{  
         res.setContentType("text/html");
         PrintWriter out = res.getWriter();
            
             String n=req.getParameter("uname");
            out.println("Hello"+" "+n);   
            
        }
          catch(Exception e)
          {
              System.out.println(e);
          }
    }

} 

