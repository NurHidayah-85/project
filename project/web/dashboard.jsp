<%-- 
    Document   : dashboard.jsp
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    int totalStaff = 0;
    int totalDelivery = 0;
    double totalIncome = 0.0;
    int totalPending = 0; 
%>

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
            <% 
                Connection con = null;
                Statement statement = null;
                 ResultSet resultSet = null;
            
                try {
                    Class.forName( "org.apache.derby.jdbc.ClientDriver");
                    con = DriverManager.getConnection("jdbc:derby://localhost:1527/anc;create=true;user=app;password=app");
                    statement = con.createStatement();

                     resultSet = statement.executeQuery("SELECT COUNT(*) FROM ANC.STAFF");
                     if ( resultSet.next()){

                     totalStaff = resultSet.getInt(1);

                             }
                     resultSet = statement.executeQuery("SELECT SUM(FEE) FROM ANC.ITEM");
                     if ( resultSet.next()){

                     totalIncome = resultSet.getDouble(1);

                             }

                     resultSet = statement.executeQuery("SELECT COUNT(STATUS) FROM ANC.ITEM_BRANCH WHERE STATUS = 'Item processed'");
                     if ( resultSet.next()){

                     totalPending = resultSet.getInt(1);

                             }
                     resultSet = statement.executeQuery("SELECT COUNT(*) FROM ANC.ITEM_BRANCH");
                     if ( resultSet.next()){

                     totalDelivery = resultSet.getInt(1);

                             }
            }
            
            %>
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
