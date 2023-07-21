<%-- 
    Document   : displaybrnaches
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>

<%@page import="bean.BranchBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="branches" scope="request" class="java.util.List<bean.BranchBean>" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branches Overview</title>
    </head>
    <center>
    <body>
        <table border="1" style ="text-align:center" width = "100%">
        <p> <h1>Branches List</h1></p>
            <tr><th style="background-color:#ABEBC6">Id</th><th style="background-color:#EAFAF1;">Location</th><th style="background-color:#ABEBC6">Poscode</th><th style="background-color:#EAFAF1;">Actions</th></tr>

            <% for (BranchBean branch : branches) {
            %>
            <tr>
                <td><%= branch.getBranchId()%></td>
                <td><%= branch.getLocation() %></td>
                <td><%= branch.getPoscode() %></td>
                <td>
                    <form action="DeleteBranchServlet" method="DELETE">
                        <input type="hidden" name="branchId" value="<%= branch.getBranchId() %>">
                        <input type="submit" value="Delete">
                    </form>
                    <form action="EditBranchServlet" method="GET">
                        <input type="hidden" name="branchId" value="<%= branch.getBranchId() %>">
                        <input type="submit" value="Edit">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
    </center>
</html>
