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
    <body>
        <h1>User Registration</h1>
        <form action="RegisterBean" method="POST">
         
            <table>
              
                    <tr>
                        <td><li>Name</li></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" value="Enter your name" /></td>
                    </tr>
                    <tr>
                        <td><li>Email</li></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" value="Enter your email" /></td>
                    </tr>
                    <tr>
                        <td><li>Username</li></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="username" value="Enter your username" /></td>
                    </tr>
                    <tr>
                        <td><li>Password</li></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="password" value="Enter your password" /></td>
                    </tr>
                    <tr>
                        <td><li>Confirm Password</li></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="cpassword" value="Enter your confirm password" /></td>
                    </tr>
                    <tr>
                    <td><input type="submit" value="Confirm Registration" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                   </table>

                  

            
        </form>
        
    </body>
</html>
