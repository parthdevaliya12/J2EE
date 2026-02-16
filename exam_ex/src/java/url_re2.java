

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class url_re2 extends HttpServlet {

    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        try{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String u = req.getParameter("uname");
        out.println("Wel" +u);
        
      
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
  

}
