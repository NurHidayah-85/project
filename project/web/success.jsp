<%-- 
    Document   : success
    Created on : Jul 17, 2023, 11:56:32 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>success page</title>
    <style>
            table, td, th {
                text-align: center;
            }
        </style>
    </head>
    <center> <body>
            <table border="0" style ="text-align:center" width = "100%">

                <tr><td>HOME</td><td> | </td><td>SERVICE</td><td> | </td><td>ABOUT</td><td> | </td><td> <a href="LogoutServlet">Logout</a></td>
                </tr>
            </table>
            <br>
            <br>
            <p><%=request.getAttribute("username")%></p>
        <p> <h1>You have done a good job today!</p>
            <p>    What next?</h1> </p>
    </body>
    </center>
</html>
