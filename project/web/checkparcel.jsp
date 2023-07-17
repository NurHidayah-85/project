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
            
            <tr><th>Sender Information</th>
                <td></td>
                <th>Parcel Information</th>
                <td></td></tr>
       <tr>
                    <td><label for="senderName">Sender Name </label></td>
                    <td> <%= custsname %></td>
                    <td><label for="weight">Net Weight </label></td>
                    <td><%= weight %> </td>
                </tr>
            
                <tr>
                    <td><label for="phone">Sender Phone Number </label></td>
                    <td>  <%= custsphone %></td>
                   <td><label for="height">Net Height </label> </td>
                    <td><%= height %></td>
                </tr>
                <tr>
                    <td><label for="SenderAddress">Sender Address </label></td>
                    <td>  <%= custsadd %></td>
                         <td><label for="shiptype">Ship fee RM :<%= shiptype %> per kg </label> </td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="Sposcode"> Postcode </label></td>
                    <td> <%= custsposcode %></td>
                     <td>Total ship fee <input type = "number" name = "fee" value = "<%= formatter.format("%.2f", shiptype * weight) %>"></td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="Semail"> Email </label></td>
                    <td><%= custsemail %> </td>
                        <td><label for="staff"> Staff ID </label></td>
                    <td><%= staffid %></td>
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
                    <th>Receiver Information</th>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="ReceiverName">Receiver Name </label></td>
                    <td><%= custsname %></td>
                    <td> </td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rtelephone">Receiver Phone Number </label> </td>
                    <td> <%= custrphone %></td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td><label for="ReceiverAddress"> Receiver Address </label></td>
                    <td><%= custradd %> </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rpostcode">Postcode</label></td>
                    <td><%= custrposcode %> </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Remail">Email </label> </td>
                    <td><%= custremail %> </td>
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
