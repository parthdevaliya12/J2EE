<%-- 
    Document   : forward_2
    Created on : 7 Sep, 2024, 10:30:57 AM
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
            String un=request.getParameter("uname");
            String ps=request.getParameter("psw");
            if(un.equals("parth") && ps.equals("123"))
            {
                %>
                <jsp:forward page="success.jsp"></jsp:forward>
                <%
                
            }
            else
            {
             %>
             <jsp:forward page="sorry.jsp"></jsp:forward>
             <%
            }
            %>
    </body>
</html>



<%-- 
    Document   : sorry
    Created on : 7 Sep, 2024, 10:36:33 AM
    Author     : PARTH
--%>