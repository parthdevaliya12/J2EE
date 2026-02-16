<%-- 
    Document   : update
    Created on : 21 Sep, 2024, 6:09:43 PM
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
            String n=request.getParameter("name");
            String a=request.getParameter("address");
           
            String m = request.getParameter("mobile");
            
            String e=request.getParameter("email");
            String c=request.getParameter("city");
             
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
                Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from cust where c_id=? ");
                    if(rs.next()){
                        String name = request.getParameter("c_name");
                        String address = request.getParameter("c_address");
                        String phone = request.getParameter("c_phone");
                        String email = request.getParameter("c_email");
                        String city = request.getParameter("c_city");
                        %>
                                  <form method="post">
                                      Customer Name:<input type="text" name="name" value="<%= name %>"><br>
                                       Customer address:<input type="text" name="address" value="<%= address %>"><br>
                                       Customer Mobile no:<input type="text" name="mobile" value="<%= phone %>"><br>
                                       Customer Email:<input type="email" name="email" value="<%= email %>"><br>
                                        Customer City:<input type="text" name="city" list="exampleList" value="<%= city %>"><br>
                                       <datalist id="exampleList">
                                           <option value="Amreli">  
                                           <option value="Surat">
                                           <option value="Rajkot">
                                           <option value="Ahemdabad">
                                       </datalist>
                                        <input type="submit">
                                   </form>                   
                        <%
                    
                PreparedStatement pst = con.prepareStatement("UPDATE cust SET c_name=?,c_address=?,c_phone=?,c_email=?,c_city=? WHERE c_id=? ");
                pst.setString(1,n);
                pst.setString(2,a);
                pst.setInt(3,m);
                pst.setString(4,e);
                pst.setString(5,c);
                pst.setInt(6,id);
                pst.executeUpdate();
              // st.execute("UPDATE cust SET c_name='"+n+"',c_address='"+a+"',c_phone='"+m+"',c_email='"+e+"',c_city='"+c+"' WHERE c_id='"+id+"' ");
                    }
                out.println("Updated...");
            }catch(Exception e2)
            {
                out.println(e2);
            }
          %>
    </body>
</html>
