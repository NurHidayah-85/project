<%-- 
    Document   : displayvehicles
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>

<%@page import="bean.VehicleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="vehicles" scope="request" class="java.util.List<bean.VehicleBean>" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicles Overview</title>
    </head>
    <center> <body>
        <table border="1" style ="text-align:center" width = "100%">
            <p> <h1>Vehicles List</h1></p>

        <tr><th style="background-color:#ABEBC6">Id</th><th style="background-color:#EAFAF1;">Type</th><th style="background-color:#ABEBC6">No.Plate</th><th style="background-color:#EAFAF1;">Action</th></tr>

            <% for (VehicleBean vehicle : vehicles) {
            %>
            <tr>
                <td><%= vehicle.getVehicleid()%></td>
                <td><%= vehicle.getVehicletype() %></td>
                <td><%= vehicle.getNoplate() %></td>
                <td>
                    <form action="DeleteVehicleServlet" method="DELETE">
                        <input type="hidden" name="vehicleid" value="<%= vehicle.getVehicleid() %>">
                        <input type="submit" value="Delete">
                    </form>
                    <form action="EditVehiclesServlet" method="GET">
                        <input type="hidden" name="vehicleid" value="<%= vehicle.getVehicleid() %>">
                        <input type="submit" value="Edit">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        </body></center>
</html>
