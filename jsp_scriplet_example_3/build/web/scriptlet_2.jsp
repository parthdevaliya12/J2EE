<%-- 
    Document   : scriptlet_2
    Created on : 7 Sep, 2024, 10:10:28 AM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String n=request.getParameter("uname");
            out.println("Welcome "+n);
         %>
    </body>
</html>
