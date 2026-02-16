<%-- 
    Document   : update_data
    Created on : 12 Sep, 2024, 7:42:06 PM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             Connection conn = null;
             Statement st = null;
             
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "");
          st = conn.createStatement();
          st.execute("update register set s_name='arjun' where roll_no=4 ");
          out.println("updated...");
        }catch(Exception e)
        {
            out.println(e);
        }
            %>
    </body>
</html>
