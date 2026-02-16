<%-- 
    Document   : add
    Created on : 18 Nov, 2024, 2:36:06 PM
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
            String fn = request.getParameter("fn");
            String ln = request.getParameter("ln");
            float sal = Float.parseFloat(request.getParameter("sal"));
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
                PreparedStatement pst = con.prepareStatement("insert into employe(firstname,lastname,salary) values (?,?,?)");
                pst.setString(1,fn);
                pst.setString(2,ln);
                pst.setFloat(3, sal);
                int x = pst.executeUpdate();
                if(x > 0){
                    %>
                    <jsp:forward page="suc.jsp"></jsp:forward>
                    <%
                }
            }catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
