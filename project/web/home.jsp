<%-- 
    Document   : home
    Created on : Jun 19, 2023, 1:05:14 PM
    Author     : NUR HIDAYAH BINTI ISHAK 2020496204
--%>

<%@page import="bean.ItemBranchBean"%>
<%@page import="bean.BranchBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="itemBranches" scope="request" class="java.util.List<bean.ItemBranchBean>" />
<jsp:useBean id="itemId" scope="request" class="String" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>

        <style>
            table, td, th {
                text-align: center;
            }
        </style>
    </head>
    <center> <body>
            <table border="0" style ="text-align:center" width = "100%">

                <tr><td>HOME</td><td> | </td><td>SERVICE</td><td> | </td><td>ABOUT</td><td> | </td><td><a href="login.jsp">LOGIN</a></td>
                </tr>

                <tr> <td colspan="7" style="text-align:center"><br><br><p>Welcome to ANC Express Tracking Parcel<br>
                            ~Always Fast, On Time and Reliable~</p>
                    </td>
                </tr>
                <tr>

                </tr>
                <tr>
                </tr>

            </table>
        <center>
            <form action="HomeServlet" method="POST">
                <table border="0" style ="text-align:center" width = "100%">
                    <tr><td>YOUR PARCEL ID : <input type="number" name="itemId" placeholder="---Enter here---" value="<%= itemId %>" /></td></tr>
                    <tr><td><input type="submit" value="Check" name="check" /></td></tr>
                </table>
            </form>

        </center>
        <br>
        <br>
        <% if (!"".equals(itemId)) {
                if (itemBranches.size() == 0) {
        %>
        <p>No entries found to this parcel id</p>
        <%
        } else {
        %>
        <table border="1" style ="text-align:center" width = "100%">

            <tr><th>Date/Time</th><th>Status</th><th>Location</th></tr>

            <% for (ItemBranchBean itemBranch : itemBranches) {
                %>
                <tr>
                    <td><%= itemBranch.getDateTime()%></td>
                    <td><%= itemBranch.getStatus()%></td>
                    <td><%= itemBranch.getBranch().getLocation()%></td>
                </tr>
                <%
            }
            %>
        </table>
        <%
                }
            }
        %>
    </body>
</center>
</html>
