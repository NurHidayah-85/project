<%-- 
    Document   : dashboard.jsp
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
    </head>
    <center> <body>
        <h1>Home Page</h1>
        <p> Welcome <%=request.getAttribute("username")%> </p>
        <p> <a href="LogoutServlet">Logout</a></p>
    </body>
    </center>
</html>
