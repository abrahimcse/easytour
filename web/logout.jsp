<%-- 
    Document   : logout
    Created on : Apr 5, 2018, 1:48:57 AM
    Author     : Science Fidelity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <h1>You have logged out</h1>
        <%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("index.html");
%>
    </body>
</html>
