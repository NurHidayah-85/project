<%-- 
    Document   : checkparcel
    Created on : Jul 17, 2023, 10:58:33 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    java.util.Formatter formatter = new java.util.Formatter();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check parcel</title>
    </head>
    
    <center>
        <h1> --Check Parcel Registration--</h1><br>

        <form action="AddParcelServlet" method="post">
            <table border="0">
                <%
                    String custsname = request.getParameter("custsname");
                    String custrname = request.getParameter("custrname");

                    int custsphone = Integer.parseInt(request.getParameter("custsphone"));
                    int custrphone = Integer.parseInt(request.getParameter("custrphone"));
                    String custsadd = request.getParameter("custsadd");
                    String custradd = request.getParameter("custradd");
                    int custsposcode = Integer.parseInt(request.getParameter("custsposcode"));
                    int custrposcode = Integer.parseInt(request.getParameter("custrposcode"));
                    String custsemail = request.getParameter("custsemail");
                    String custremail = request.getParameter("custremail");

                    double weight = Double.parseDouble(request.getParameter("weight"));
                    double height = Double.parseDouble(request.getParameter("height"));
                    double shiptype = Double.parseDouble(request.getParameter("shiptype"));

                    int staffid = Integer.parseInt(request.getParameter("staffid"));
                %>

                <tr><th style="background-color:#EAFAF1; padding: 10px">Sender Information</th>
                    <td></td>
                    <th style="background-color:#ABEBC6; padding: 10px">Parcel Information</th>
                    <td></td></tr>
                <tr>
                    <td><label for="senderName">Sender Name </label></td>
                    <td><%= custsname%><input type="hidden" name="custsname" value="<%= custsname %>"></td>
                    <td><label for="weight">Net Weight </label></td>
                    <td><%= weight%><input type="hidden" name="weight" value="<%= weight %>"></td>
                </tr>

                <tr>
                    <td><label for="phone">Sender Phone Number </label></td>
                    <td>  <%= custsphone%><input type="hidden" name="custsphone" value="<%= custsphone %>"></td>
                    <td><label for="height">Net Height </label> </td>
                    <td><%= height%><input type="hidden" name="height" value="<%= height %>"></td>
                </tr>
                <tr>
                    <td><label for="SenderAddress">Sender Address </label></td>
                    <td>  <%= custsadd%><input type="hidden" name="custsadd" value="<%= custsadd %>"></td>
                    <td><label for="shiptype">Ship fee RM :<%= shiptype%> per kg </label> <input type="hidden" name="shiptype" value="<%= shiptype %>"></td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="Sposcode"> Postcode </label></td>
                    <td> <%= custsposcode%><input type="hidden" name="custsposcode" value="<%= custsposcode %>"></td>
                    <td>Total ship fee <input type = "number" step="0.01" name = "fee" value = "<%= formatter.format("%.2f", shiptype * weight)%>"></td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="Semail"> Email </label></td>
                    <td><%= custsemail%> <input type="hidden" name="custsemail" value="<%= custsemail %>"></td>
                    <td><label for="staff"> Staff ID </label></td>
                    <td><%= staffid%><input type="hidden" name="staffid" value="<%= staffid %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td> </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr><th></th>
                    <td></td>
                    <td></td>
                    <td></td></tr>
                <tr>
                    <th style="background-color:#EAFAF1; padding: 10px">Receiver Information</th>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="ReceiverName">Receiver Name </label></td>
                    <td><%= custrname%><input type="hidden" name="custrname" value="<%= custrname %>"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rtelephone">Receiver Phone Number </label> </td>
                    <td> <%= custrphone%><input type="hidden" name="custrphone" value="<%= custrphone %>"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="ReceiverAddress"> Receiver Address </label></td>
                    <td><%= custradd%> <input type="hidden" name="custradd" value="<%= custradd %>"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rpostcode">Postcode</label></td>
                    <td><%= custrposcode%> <input type="hidden" name="custrposcode" value="<%= custrposcode %>"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Remail">Email </label> </td>
                    <td><%= custremail%> <input type="hidden" name="custremail" value="<%= custremail %>"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>  </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td> </td>
                    <td></td>
                    <td></td>
                </tr>
            </table>

            <input type = "reset" value = "Reset"> <input type = "submit" value = "Submit">

            <p style="color:red;"> <%
                      if (request.getAttribute("errMessage") == null) {
                      } else {
                %>
                <%= request.getAttribute("errMessage")%>
                <%
                    }
                %></p>
        </form>
    </center>
</html>
