<%-- 
    Document   : checkbranch
    Created on : Jul 18, 2023, 12:12:38 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add branch</title>
    </head>
    
    <body><table border="0" align="right">
         
                <tr>
                    <td><button onclick="window.location.href = 'DisplayBranchesServlet';"/>View List </button></td>
                </tr>
            
        </table>

        
            <center>
            <h1>Add Branch</h1>
            <form action="AddBranchServlet" method="POST">
                <table>
                    
                     <%
                    int poscode = Integer.parseInt(request.getParameter("poscode"));
                    String location = request.getParameter("location");

                      %>

                    
                    <tr>
                        <td style="background-color:#ABEBC6; padding: 10px">Branch Location: </td>
                        <td><%= location%><input type="hidden" name="location" value="<%= location %>"></td>
                    </tr>
                    <tr>
                        <td style="background-color:#EAFAF1; padding: 10px">Postcode</td>
                        <td><%= poscode%><input type="hidden" name="poscode" value="<%= poscode %>"></td>
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
             </center>
        </body>
    </center>
</html>