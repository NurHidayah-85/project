<%-- 
    Document   : trackingstatus
    Created on : Jul 17, 2023, 2:21:51 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>add tracking</title>
    </head>
    <center>
    <body>
        <h1>Add Tracking Status</h1>
        <form action="AddTrackingStatusServlet" method="POST">
            
            <table>
                
                    <tr>
                        <td>Item ID </td>
                        <td><input type="number" name="itemId" value="" /></td>
                    </tr>
               
                    <tr>
                       <td>Branch Location: </td>
                        <td><select name="location">
                            <option value="1">Selangor</option>
                            <option value="2">Kedah</option>
                            <option value="3">Perak</option>
                            <option value="4">Malacca</option>
                            <option value="5">Kelantan</option>
                            <option value="6">Terengganu</option>
                            <option value="7">Johore</option>
                            <option value="8">Penang</option>
                          </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td>
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
