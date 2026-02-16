
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class req_disp_2 extends HttpServlet {

  
    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String n=req.getParameter("username");
        String p=req.getParameter("userpass");
        if(p.equals("123"))
        {
            RequestDispatcher dis=req.getRequestDispatcher("req_disp_3");
            dis.forward(req, res);
            
        }
        else
        {
            out.println("username and password incorrect!!!");
            RequestDispatcher dis=req.getRequestDispatcher("/index.html");
            dis.include(req, res);
            
        }
        
    }

   
}
