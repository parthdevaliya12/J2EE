<%-- 
    Document   : delete
    Created on : 21 Sep, 2024, 6:30:34 PM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id=Integer.parseInt(request.getParameter("id"));
             try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
                Statement st = con.createStatement();
                st.execute("delete from cust where c_id='"+id+"' ");
                
                out.println("Deleted...");
            }catch(Exception e2)
            {
                out.println(e2);
            }
         %>
    </body>
</html>
