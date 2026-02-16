<%-- 
    Document   : error1
    Created on : 18 Nov, 2024, 3:59:14 PM
    Author     : PARTH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error2.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n1 = request.getParameter("n1");
            String n2 = request.getParameter("n2");
            
            int a = Integer.parseInt(n1);
            int b = Integer.parseInt(n2);
            int c = a/b;
            out.println("Division:" +c);
            %>
    </body>
</html>
