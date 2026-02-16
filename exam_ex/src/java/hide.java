

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class hide extends HttpServlet {

    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        try{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String u = req.getParameter("h");
        out.println("Welcome" +u);
        out.println("<html><body>");
        out.println("<form action='hide2' method='post'>");
        out.println("<input type='hidden' name='h2' value='"+u+"'>");
        out.println("<input type='submit' value='go'>");
        out.println("</form>");
        out.println("</html></body>");
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
  

}
