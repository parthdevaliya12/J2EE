

import java.sql.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;


public class login_file extends HttpServlet {
    
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException , ServletException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        String u = req.getParameter("user");
        String p = req.getParameter("pass");
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
            
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM login WHERE username='"+u+"' AND password='"+p+"' ");
            
            if(rs.next()){
                if(rs.getString("username").equals(u) && rs.getString("password").equals(p))
                {
                    out.println("Welcome "+u);
                    
                }
                else{
                    out.println("Invalid...");
                }
            }
        }catch(Exception e){
            out.println(e);
        }
    }

    }

  


