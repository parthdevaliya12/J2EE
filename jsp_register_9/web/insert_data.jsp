<%-- 
    Document   : insert_data
    Created on : 12 Sep, 2024, 7:04:33 PM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
     int mobile = 0;
     float percentage = 0.0f;
    
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
          try {
        // Parse mobile and percentage with error handling
        mobile = Integer.parseInt(request.getParameter("mobile"));
        percentage = Float.parseFloat(request.getParameter("percentage"));
       } catch (NumberFormatException e) {
           out.println("Error: Invalid number format for mobile or percentage.");
        return;
       }
        String address=request.getParameter("address");
        String gender=request.getParameter("gender");
        String field=request.getParameter("field");
       String[] skillArray = request.getParameterValues("skills");
       String skills = skillArray != null ? String.join(", ", skillArray) : "";
        float f=Float.parseFloat(request.getParameter("percentage"));
        
         Connection conn = null;
         PreparedStatement pstmt = null; 
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "");
        String sql = "INSERT INTO register (s_name, email, mobile_no, address, gender, field, skils, percentage) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, lastname);
        pstmt.setString(2, email);
        pstmt.setInt(3, mobile);
        pstmt.setString(4, address);
        pstmt.setString(5, gender);
        pstmt.setString(6, field);
        pstmt.setString(7, skills);
        pstmt.setFloat(8, percentage);
        
         int rowsAffected = pstmt.executeUpdate();

        // Provide feedback based on the operation result
                if (rowsAffected > 0) {
                    out.println("Data is successfully inserted!");
                } else {
                    out.println("Data insertion failed.");
                }
        }
        catch(Exception e)
        {
           out.print(e);
        }
        finally{
            conn.close();
            pstmt.close();
        }
 %>
    </body>
</html>
