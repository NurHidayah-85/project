<%-- 
    Document   : addvehicle
    Created on : Jul 16, 2023, 10:45:36 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add vehicle</title>
    </head>
    <center>
    <body>
        <h1>Add Vehicle</h1>
        <form action="AddVehicleServlet" method="POST">
            
            <table>
                
                    <tr>
                        <td>Vehicle Type: </td>
                        <td><select name="vehicletype" id="vehicle">
                            <option value="van">Van</option>
                            <option value="lorry">Lorry</option>
                            <option value="car">Car</option>
                            <option value="motorcycle">Motorcycle</option>
                          </select></td>
                    </tr>
               
                    <tr>
                        <td>No. Plate:</td>
                        <td><input type="text" name="noplate" value="" /></td>
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
