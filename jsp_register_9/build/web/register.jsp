<%-- 
    Document   : register
    Created on : 11 Sep, 2024, 6:32:43 PM
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
        <%!
            ResultSet rs; Statement st;
        %>
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
            
            try{
                st=con.createStatement();
                rs=st.executeQuery("select * from register");
                %>
                <h1 align="center">Student Details</h1>
                <table border="3" align="center">
                    <b>
                        <tr>
                            <td>Roll No</td>
                            <td>Student Name</td>
                            <td>Email</td>
                            <td>Mobile No</td>
                            <td>Address</td>
                            <td>Gender</td>
                            <td>Field</td>
                            <td>Skils</td>
                            <td>Percentage</td>
                            
                        </tr>
                        <%
                        while(rs.next())
                        {
                            %>
                            <tr>
                                <td align="center"><%= rs.getInt(1) %></td>
                                <td align="center"><%= rs.getString(2) %></td>
                                <td align="center"><%= rs.getString(3) %></td>
                                <td align="center"><%= rs.getInt(4) %></td>
                                <td align="center"><%= rs.getString(5) %></td>
                                <td align="center"><%= rs.getString(6) %></td>
                                <td align="center"><%= rs.getString(7) %></td>
                                <td align="center"><%= rs.getString(8) %></td>
                                <td align="center"><%= rs.getFloat(9)+"%" %></td>
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
