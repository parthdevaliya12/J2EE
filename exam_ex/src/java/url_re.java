

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class url_re extends HttpServlet {

    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        try{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String u = req.getParameter("h");
        out.println("Wel" +u);
        
        out.println("<html><body>");
        out.println("<a href='url_re2?uname="+u+" '>Visit</a>");
        
        out.println("</html></body>");
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
  

}
