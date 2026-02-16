<%-- 
    Document   : in
    Created on : 13 Oct, 2024, 2:42:15 PM
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
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","");
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String sel = request.getParameter("sel");
            int sal = Integer.parseInt(request.getParameter("salary"));
            
            try{
                PreparedStatement pst = con.prepareStatement("insert into jsp_data(name,email,password,city,salary) values (?,?,?,?,?)");
                pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,password);
                pst.setString(4,sel);
                pst.setInt(5, sal);
                int x = pst.executeUpdate();
                if(x > 0){
                    %>
                        <%= "inserted......"%>
                    <%
                }
            }catch(Exception e)
            {
                out.println(e);
            }
           %>
    </body>
</html>
