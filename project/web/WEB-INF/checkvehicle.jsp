<%-- 
    Document   : checkvehicle
    Created on : Jul 18, 2023, 12:28:29 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>add vehicle</title>
    </head>
    <table border="0" align="right">
           <%
               String noplate = request.getParameter("noplate");
               String vehicletype = request.getParameter("vehicletype");
               
               %>
         
                <tr>
                    <td><button onclick="window.location.href = 'DisplayVehiclesServlet';"/>View List </button></td>
                </tr>
            
        </table>
    <center>
    <body>
        <h1>Add Vehicle</h1>
        <form action="AddVehicleServlet" method="POST">
            
            <table>
                
                    <tr>
                        <td>Vehicle Type: </td>
                        <td><%= vehicletype%><input type="hidden" name="vehicletype" value="<%= vehicletype%>"></td>
                    </tr>
               
                    <tr>
                        <td>No. Plate:</td>
                        <td><%= noplate%><input type="hidden" name="noplate" value="<%= noplate%>"></td>
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
