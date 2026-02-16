
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class req_disp_3 extends HttpServlet {

  
    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String n=req.getParameter("username");
        
        out.println("Welcome"+" "+n);
       
    }

   
}
