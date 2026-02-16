<%-- 
    Document   : sel
    Created on : 13 Oct, 2024, 2:57:40 PM
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
         <table align="center" border="1">
             <b>
                 <tr>
                     <th align="center">Id</th>
                     <th align="center">Name</th>
                     <th align="center">Email</th>
                     <th align="center">Password</th>
                     <th align="center">City</th>
                     <th align="center">Salary</th>  
                     <th align="center">Action</th>
                     <th align="center">Action</th>
                 </tr>
                
                 <%
                   while(rs.next())
                   {
                       %>
                       <tr>
                           <td align="center"><%= rs.getInt(1) %></td>
                            <td align="center"><%= rs.getString(2) %></td>
                             <td align="center"><%= rs.getString(3) %></td>
                              <td align="center"><%= rs.getString(4) %></td>
                               <td align="center"><%= rs.getString(5) %></td>
                                <td align="center"><%= rs.getInt(6) %></td>
                                <td align="center"><a href="del.jsp?id=<%= rs.getInt("id") %>">Delete</a></td>
                                <td align="center"><a href="up.jsp?id=<%= rs.getInt("id") %>">Update</a></td>
                       </tr>
                       <%
                   }
               %>
              
             </b>
         </table>
      
        
    </body>
</html>
