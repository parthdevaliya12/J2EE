<%-- 
    Document   : select
    Created on : 20 Sep, 2024, 6:13:29 PM
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
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
            
            try{
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from cust");
                
                %>
                <h1 align="center">Customer Details</h1>
                <table border="5" align="center">
                    <b>
                        <tr>
                            <th>Customer Id</th>
                             <th>Customer Name</th>
                              <th>Customer Address</th>
                               <th>Customer Mobile Number</th>
                                <th>Customer Email</th>
                                 <th>Customer City</th>
                                 <th>Action</th>
                                 <th>Action</th>
                        </tr>
                        <%
                        while(rs.next())
                        {
                             int customerId = rs.getInt("c_id");
                            %>
                            <tr>
                                 <td align="center"><%= customerId %></td>
                                 <td align="center"><%= rs.getString(2) %></td>
                                  <td align="center"><%= rs.getString(3) %></td>
                                   <td align="center"><%= rs.getInt(4) %></td>
                                    <td align="center"><%= rs.getString(5) %></td>
                                     <td align="center"><%= rs.getString(6) %></td>
                                     <td align="center"><a href="update.jsp?id=<%= customerId %>">Update</a></td>
                                     <td align="center"><a href="delete.jsp?id=<%= customerId %>">Delete</a></td>
                            </tr>
                            <%
                        }
                        rs.close();
                        st.close();
                        con.close();
                        %>
                     
                    </b>
                </table>
                      <% 
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
