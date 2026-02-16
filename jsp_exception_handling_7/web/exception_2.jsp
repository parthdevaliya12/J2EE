<%-- 
    Document   : exception_2
    Created on : 7 Sep, 2024, 11:10:24 AM
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
        <%@page errorPage="error.jsp" %>
        <%
            String n1=request.getParameter("num1");
            String n2=request.getParameter("num2");
            
            int x=Integer.parseInt(n1);
            int y=Integer.parseInt(n2);
            int z=x/y;
            out.println("Division is:"+z);
        %>
    </body>
</html>
