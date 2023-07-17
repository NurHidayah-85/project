<%-- 
    Document   : login
    Created on : Jun 19, 2023, 12:59:51 PM
    Author     : NUR HIDAYAH BINTI ISHAK 2020496204
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link rel="stylesheet" type="text/css" href="Style.css">
  <script src="script.js"></script>
    </head>
    <body>
    <center> <h1>Login ANC Express Delivery</h1>
        <form action="LoginServlet" method="POST">
            <table border="0" cellspacing="4">
                
                <tbody>
                    <tr>
                        <td>Username</td>
                             <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            <p style="color:red;"> <%
                            if (request.getAttribute("errMessage") == null) {
                            } else {
                                %>
                                <%= request.getAttribute("errMessage") %>
                                <%
                            }
                                %></p>
        </form>
    </center>
    </body>
</html>
