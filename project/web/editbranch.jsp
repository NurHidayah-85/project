<%-- 
    Document   : editbranch
    Created on : Jul 16, 2023, 9:43:57 PM
    Author     : frei-
--%>

<%@page import="bean.BranchBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="branch" scope="request" class="bean.BranchBean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit branch</title>
    </head>
    <center>
        <body>
            <h1>Add Branch</h1>
            <form action="EditBranchServlet" method="POST">
                <input type="hidden" name="branchId" value="<%= branch.getBranchId() %>" />
                <table>
                    <tr>
                        <td>Branch Location: </td>
                        <td>
                            <select name="location">
                                <option value="Selangor" <%= branch.getLocation().equals("Selangor") ? "selected" : ""%> >Selangor</option>
                                <option value="Kedah" <%= branch.getLocation().equals("Kedah") ? "selected" : ""%> >Kedah</option>
                                <option value="Perak" <%= branch.getLocation().equals("Perak") ? "selected" : ""%> >Perak</option>
                                <option value="Malacca" <%= branch.getLocation().equals("Malacca") ? "selected" : ""%> >Malacca</option>
                                <option value="Kelantan" <%= branch.getLocation().equals("Kelantan") ? "selected" : ""%> >Kelantan</option>
                                <option value="Terengganu" <%= branch.getLocation().equals("Terengganu") ? "selected" : ""%> >Terengganu</option>
                                <option value="Johore" <%= branch.getLocation().equals("Johore") ? "selected" : ""%> >Johore</option>
                                <option value="Penang" <%= branch.getLocation().equals("Penang") ? "selected" : ""%> >Penang</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Postcode</td>
                        <td><input type="number" name="poscode" value="<%= branch.getPoscode()%>" /></td>
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