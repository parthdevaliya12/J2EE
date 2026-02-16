


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class hidden_form_ex extends HttpServlet {
        
    public void doGet(HttpServletRequest req,HttpServletResponse res)
    {
        try{
            res.setContentType("text/html");
            PrintWriter out=res.getWriter();
            String n=req.getParameter("username");
            out.println("welcome"+" "+n);
            out.println("<form action='hidden_ex_2'>");
            out.println("<input type='hidden' value='+n+' name='uname'>");
            out.println("<input type='submit' value='send'>");
            out.println("</form>");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
            
}
    

    


