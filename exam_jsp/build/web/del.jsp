<%-- 
    Document   : del
    Created on : 13 Oct, 2024, 3:08:24 PM
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
             int id  = Integer.parseInt(request.getParameter("id"));
             
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","");
         
         Statement st = con.createStatement();
         st.execute("delete from jsp_data where id='"+id+"' ");
         
         
         %>
    </body>
</html>
