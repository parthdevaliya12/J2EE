

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class life_cycle extends HttpServlet {
    
        public void init(){}
        
        public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException{
            res.setContentType("text/html");
            PrintWriter out = res.getWriter();
            out.println("<b>Hello i am.</b>");
            
        }
        public void destroy(){}

    }
  


