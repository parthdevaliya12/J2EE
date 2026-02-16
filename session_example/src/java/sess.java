

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sess extends HttpServlet {


    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String n = req.getParameter("uname");
        HttpSession s = req.getSession();
        
        s.setAttribute("uname", n);
        
        String se = (String)s.getAttribute("uname");
        
        out.println("Session Id:" +s.getId());
        s.invalidate();
        
    }

}
