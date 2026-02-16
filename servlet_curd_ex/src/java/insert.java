import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class insert extends HttpServlet {
    
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/extra","root","");
        
        String u = req.getParameter("uname");
        String e = req.getParameter("email");
        String p = req.getParameter("psw");
        
        PreparedStatement pst = con.prepareStatement("insert into info values(?,?,?)");
        pst.setString(1, u);
        pst.setString(2, e);
        pst.setString(3, p);
       int x = pst.executeUpdate();
       if(x > 0){
          RequestDispatcher dis = req.getRequestDispatcher("fetch");
          dis.forward(req, res);
       }
       else{
          
           RequestDispatcher dis = req.getRequestDispatcher("index.html");
           dis.include(req, res);
       }
       
    }
        catch(Exception e)
        {
            System.out.println(e);
        }

    }
}
