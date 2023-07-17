<%-- 
    Document   : dashboard.jsp
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="totalStaff" scope="request" class="Integer" />
<jsp:useBean id="totalDelivery" scope="request" class="Integer" />
<jsp:useBean id="totalIncome" scope="request" class="Double" />
<jsp:useBean id="totalPending" scope="request" class="Integer" />

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

                <tr><td>HOME</td><td> | </td><td><a href="service.jsp">SERVICE</a></td><td> | </td><td><a href="about.jsp">ABOUT</a></td><td> | </td><td><%=request.getAttribute("username")%> |  <a href="LogoutServlet">Logout</a></td>
                </tr>
            </table>
            <br>
            <br>
            <table>
                <tr>
                    <th style="background-color:#ABEBC6; padding: 40px">Total income (RM)</th>
                    <th style="background-color:#EAFAF1; padding: 40px">Total delivery</th>
                    <th style="background-color:#ABEBC6; padding: 40px">Total staff</th>
                </tr>
                <tr>
                    <td style="padding: 40px">
                        <%= totalIncome %>
                    </td>
                    <td style="padding: 40px">
                        <%= totalDelivery %>
                    </td>
                    <td style="padding: 40px">
                        <%= totalStaff %>
                    </td>
                </tr>
                <tr>
                    <th style="background-color:#EAFAF1; padding: 40px">Pending delivery</th>
                </tr>
                <tr>
                    <td style="padding: 40px">
                        <%= totalPending%>
                    </td>
                </tr>
            </table>
    </body>
    </center>
</html>
