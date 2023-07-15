<%-- 
    Document   : home
    Created on : Jun 19, 2023, 1:05:14 PM
    Author     : NUR HIDAYAH BINTI ISHAK 2020496204
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
