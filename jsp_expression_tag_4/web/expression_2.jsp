<%-- 
    Document   : expression_2
    Created on : 7 Sep, 2024, 10:19:03 AM
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
        <%= "Welcome " +request.getParameter("uname") %>
    </body>
</html>
