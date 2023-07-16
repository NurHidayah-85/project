<%-- 
    Document   : editvehicle
    Created on : Jul 17, 2023, 4:45:29 AM
    Author     : LENOVO
--%>

<%@page import="bean.VehicleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="vehicle" scope="request" class="bean.VehicleBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit vehicle</title>
    </head>
    <center>
        <body>
            <h1>Add Vehicle</h1>
            <form action="EditVehicleServlet" method="POST">
                <input type="hidden" name="Vehicleid" value="<%= vehicle.getVehicleid() %>" />
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
                        <td><input type="text" name="noplate" value="<%= vehicle.getNoplate()%>" /></td>
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