<%-- 
    Document   : input
    Created on : 20 Sep, 2024, 5:37:52 PM
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
            
            int mobile = 0;
            String n=request.getParameter("name");
            String a=request.getParameter("address");
            mobile = Integer.parseInt(request.getParameter("mobile"));
            String e=request.getParameter("email");
            String c=request.getParameter("city");
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");

                PreparedStatement pst = con.prepareStatement("insert into cust(c_name,c_address,c_phone,c_email,c_city) values(?,?,?,?,?)");
              //   PreparedStatement pst = con.prepareStatement("insert into cust(c_name,c_address,c_phone,c_email,c_city) values('jay','amreli',0123456789,'jay@gmail.com','amreli')");

                pst.setString(1,n);
                pst.setString(2,a);
                pst.setInt(3,mobile);
                pst.setString(4,e);
                pst.setString(5,c);

                int done=pst.executeUpdate();
                if(done > 0)
                {
                    out.println("inserted...");
                }
                else
                {
                    out.println("not insert!");
                }
            }
            catch(Exception e2)
            {
                out.println(e2);
            }
            finally{
               
            }
         %>
         
    </body>
</html>
