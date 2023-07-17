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
     <style>
            table, td, th {
                text-align: center;
            }
        </style>
    </head>
    <center> <body>
            <table border="0" style ="text-align:center" width = "100%">

                <tr><td>HOME</td><td> | </td><td>SERVICE</td><td> | </td><td>ABOUT</td><td> | </td><td><%=request.getAttribute("username")%> |  <a href="LogoutServlet">Logout</a></td>
                </tr>
            </table>
            <br>
            <br>
            
    </body>
    </center>
</html>
