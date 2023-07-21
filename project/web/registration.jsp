<%-- 
    Document   : registration
    Created on : Jul 15, 2023, 10:28:54 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <center>
    <body>
        <h1>User Registration ANC Express Delivery</h1>
        <form action="RegisterServlet" method="POST">
            <table>
               
                    <tr>
                        <td>Name</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fullname" placeholder="Enter your name" /></td>
                    </tr>
                    <tr>
                        <td>Position</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="position" placeholder="Enter your position" /></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                    </tr>
                    <tr>
                        <td><input type="number" name="phone" placeholder="Enter your phonenumber" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="address" placeholder="Enter your address" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" placeholder="Enter your email" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="username" placeholder="Enter your username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                    </tr>
                    <tr>
                        <td><input type="password" maxlength="6" name="password" placeholder="Enter your password" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                    </tr>
                    <tr>
                        <td><input type="password" maxlength="6" name="cpassword" placeholder="Enter your confirm password" /></td>
                    </tr>
                    <tr>
                    <td><input type="submit" value="Register" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
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
                                
    </body>
    </center>
</html>
