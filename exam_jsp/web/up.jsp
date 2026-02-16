<%-- 
    Document   : up
    Created on : 13 Oct, 2024, 3:20:11 PM
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
          Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select * from jsp_data");
         %>
         <form action="in.jsp" method="post">
            Name:<input type="text" name="name"/>
            Email:<input type="email" name="email"/>
            Password:<input type="password" name="password"/>
            <label>City:</label>
            <select name="sel">
                <option value="Amreli">Amreli</option>
                <option value="Surat">Surat</option>
                <option value="Jamnagar">Jamnagar</option>
            </select>
               
            Salary:<input type="text" name="salary"/>
            Submit:<input type="submit"/>
        </form>
         <%
             int id  = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String sel = request.getParameter("sel");
            int sal = Integer.parseInt(request.getParameter("salary"));  
           
          PreparedStatement pst = con.prepareStatement("update jsp_data set name=?,email=?,password=?,city=?,salary=? where id='"+id+"' ");
             pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,password);
                pst.setString(4,sel);
                pst.setInt(5, sal);
                pst.executeUpdate();
                
                

          
         %>
    </body>
</html>
