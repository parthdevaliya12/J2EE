
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class addition_two extends HttpServlet {

        public void doGet(HttpServletRequest req,HttpServletResponse res)
                throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        int sum;
        int x,y;
        String a=req.getParameter("num1");
        String b=req.getParameter("num2");
        x=Integer.parseInt(a);
        y=Integer.parseInt(b);
        sum=x+y;
        out.println("Addition of two number is="+" "+sum);
          
        }
    }
   


