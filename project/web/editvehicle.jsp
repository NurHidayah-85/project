<%-- 
    Document   : editvehicle
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>

<%@page import="bean.VehicleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="vehicle" scope="request" class="bean.VehicleBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit vehicle</title>
    </head>
    <center>
        <body>
            <h1>Edit Vehicle</h1>
            <form action="EditVehiclesServlet" method="POST">
                <input type="hidden" name="vehicleid" value="<%= vehicle.getVehicleid() %>" />
                <table>
                    <tr>
                        <td>Vehicle Type: </td>
                        <td>
                            <select name="vehicletype">
                                <option value="van" <%= vehicle.getVehicletype().equals("van") ? "selected" : ""%> >van</option>
                                <option value="lorry" <%= vehicle.getVehicletype().equals("lorry") ? "selected" : ""%> >lorry</option>
                                <option value="motorcycle" <%= vehicle.getVehicletype().equals("motorcycle") ? "selected" : ""%> >motorcycle</option>
                                <option value="car" <%= vehicle.getVehicletype().equals("car") ? "selected" : ""%> >car</option>
                                <option value="ship" <%= vehicle.getVehicletype().equals("ship") ? "selected" : ""%> >ship</option>
                                <option value="air" <%= vehicle.getVehicletype().equals("air") ? "selected" : ""%> >air</option>
                              
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>No.Plate</td>
                        <td><input type="number" name="noplate" value="<%= vehicle.getNoplate()%>" /></td>
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
                    <%= request.getAttribute("errMessage")%>
                    <%
                        }
                    %></p>
            </form>
        </body>
    </center>
</html>