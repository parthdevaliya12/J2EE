<%-- 
    Document   : login
    Created on : 10 Sep, 2024, 6:25:52 PM
    Author     : PARTH
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.http.*" %>
<%@ page import ="javax.servlet.*" %>
<html>
    <body>


<%
    String u=request.getParameter("uname");
    session.putValue("uname", u);
    String p=request.getParameter("pass"); 
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM login WHERE username='"+u+"' AND password='"+p+"' ");
    try {
        if(rs.next()) {  // Check if there's a result
            if(rs.getString("password").equals(p) && rs.getString("username").equals(u)) {
                out.println("Welcome " + u);
            }
        } else {
            // This part handles invalid username and password when no rows are returned
            out.println("Invalid username or password...");
        }
    } catch(Exception e) {
        out.println(e);
    } finally {
        // Optional: close resources
    }
   %>
    </body>
</html>
