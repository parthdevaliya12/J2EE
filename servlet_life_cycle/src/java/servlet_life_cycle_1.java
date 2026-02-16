import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class servlet_life_cycle_1 extends HttpServlet {

        private String msg;
        public void init()
        {
            msg="Hello Servlet Life Cycle";
        }
        public void doGet(HttpServletRequest req,HttpServletResponse res)throws
                IOException,ServletException
        {
            res.setContentType("text/html");
            PrintWriter out=res.getWriter();
            out.println("<h1><u>"+ msg +"</u></h1>");
        }
        public void destroy()
        {
            
        }
    }


