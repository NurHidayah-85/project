<%-- 
    Document   : dashboard.jsp
    Created on : Jul 16, 2023, 1:37:05 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.*"%>
<%@page import="java.text.DecimalFormat"%>

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

                <tr><td style="background-color:#F7DC6F">HOME</td><td> | </td><td><a href="service.jsp">SERVICE</a></td><td> | </td><td><a href="about.jsp">ABOUT</a></td><td> | </td><td><%=request.getAttribute("username")%> |  <a href="LogoutServlet">Logout</a></td>
                </tr>
            </table>
            <br>
            <br>
            <% 
                Connection con = null;
                Statement statement = null;
                 ResultSet resultSet = null;
                 DecimalFormat df = new DecimalFormat("0.00");
            
                try {
                    Class.forName( "org.apache.derby.jdbc.ClientDriver");
                    con = DriverManager.getConnection("jdbc:derby://localhost:1527/anc;create=true;user=app;password=app");
                    statement = con.createStatement();

                     resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.STAFF");
                     if ( resultSet.next()){

                     totalStaff = resultSet.getInt(1);

                             }
                     resultSet = statement.executeQuery("SELECT SUM(FEE) FROM APP.ITEM");
                     if ( resultSet.next()){

                     totalIncome = resultSet.getDouble(1);

                             }

                     resultSet = statement.executeQuery("SELECT COUNT(STATUS) FROM APP.ITEM_BRANCH WHERE STATUS = 'Item processed'");
                     if ( resultSet.next()){

                     totalPending = resultSet.getInt(1);

                             }
                     resultSet = statement.executeQuery("SELECT COUNT(*) FROM APP.ITEM_BRANCH");
                     if ( resultSet.next()){

                     totalDelivery = resultSet.getInt(1);

                             }
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    if (resultSet != null) {
                        try {
                            resultSet.close();
                        } catch (SQLException e) {
                        }
                    }
                    if (statement != null) {
                        try {
                            statement.close();
                        } catch (SQLException e) {
                        }
                    }
                    if (con !=null) {
                        try {
                            con.close();
                        } catch (SQLException e) {
                        }
                    }
                }
            %>

            <table>
                
                <tr>
                    <th><a href="regparcel.jsp">Register Item Parcel</a><br>
                        <a href="regbranch.jsp">Register Branch</a><br>
                            <a href="regvehicle.jsp">Register Vehicle</a><br>
                    <a href="trackingstatus.jsp">Register Tracking</a></th>
                    <th style="background-color:#ABEBC6; padding: 40px">Total income (RM)</th>
                    <th style="background-color:#EAFAF1; padding: 40px">Total delivery</th>
                    <th style="background-color:#ABEBC6; padding: 40px">Total staff</th>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td style="padding: 40px">
                        <%= df.format(totalIncome) %>
                    </td>
                    <td style="padding: 40px">
                        <%= totalDelivery %>
                    </td>
                    <td style="padding: 40px">
                        <%= totalStaff %>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th style="background-color:#EAFAF1; padding: 40px">Pending delivery</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td style="padding: 40px">
                        <%= totalPending%>
                    </td>
                </tr>
            </table>
        </body>
    </center>
</html>
