<%-- 
    Document   : dashboard.jsp
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="totalStaff" scope="request" class="Integer" />
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
                    <th>Total income</th>
                    <th>Total delivery</th>
                    <th>Total staff</th>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <%= totalStaff %>
                    </td>
                </tr>
                <tr>
                    <th>Pending delivery</th>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>
    </body>
    </center>
</html>
