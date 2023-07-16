<%-- 
    Document   : displayvehicles
    Created on : Jul 17, 2023, 4:40:29 AM
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

            <tr><th>Id</th><th>Type</th><th>No.Plate</th></tr>

            <% for (VehicleBean branch : vehicles) {
            %>
            <tr>
                <td><%= branch.getVehicleid()%></td>
                <td><%= branch.getVehicletype() %></td>
                <td><%= branch.getNoplate() %></td>
                <td>
                    <form action="DeleteBranchServlet" method="DELETE">
                        <input type="hidden" name="branchId" value="<%= branch.getVehicleid() %>">
                        <input type="submit" value="delete">
                    </form>
                    <form action="EditBranchServlet" method="GET">
                        <input type="hidden" name="branchId" value="<%= branch.getVehicleid() %>">
                        <input type="submit" value="edit">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        </body></center>
</html>
