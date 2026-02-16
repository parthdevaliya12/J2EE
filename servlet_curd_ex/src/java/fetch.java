import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class fetch extends HttpServlet {
    
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/extra","root","");
        
       
      
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery("SELECT * FROM info");
           
           while(rs.next()){
                  out.println(rs.getString(1) + rs.getString(2) + rs.getString(3));

           }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }

    }
}
 

