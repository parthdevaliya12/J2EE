<%-- 
    Document   : error
    Created on : 7 Sep, 2024, 11:14:36 AM
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
        <%@page isErrorPage="true" %>
        <strong>Can't divided by zero</strong><br>
        Exception is:<%= exception %>
    </body>
</html>
