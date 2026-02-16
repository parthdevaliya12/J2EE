<%-- 
    Document   : delete_data
    Created on : 12 Sep, 2024, 7:53:49 PM
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
          st.execute("delete from register where roll_no=2 ");
          out.println("deleted...");
        }catch(Exception e)
        {
            out.println(e);
        }
            %>
    </body>
</html>
