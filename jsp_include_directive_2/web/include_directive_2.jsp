<%-- 
    Document   : include_directive_2
    Created on : 7 Sep, 2024, 10:04:40 AM
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
        <%@include file="index.html" %><br>
        Today is:<%= java.util.Calendar.getInstance().getTime() %>
    </body>
</html>
