

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class hide2 extends HttpServlet {

    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        try{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
       
        String n = req.getParameter("h2");
        out.println("Hello" +n);
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
  

}
