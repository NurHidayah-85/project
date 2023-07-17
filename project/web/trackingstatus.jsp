<%-- 
    Document   : trackingstatus
    Created on : Jul 17, 2023, 2:21:51 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>add tracking</title>
    </head>
    <center>
    <body>
        <h1>Add Tracking Status</h1>
        <form action="AddTrackingStatusServlet" method="POST">
            
            <table>
                
                    <tr>
                        <td>Item ID </td>
                        <td><input type="number" name="itemId" value="" /></td>
                    </tr>
               
                    <tr>
                       <td>Branch Location: </td>
                        <td><select name="branchId">
                            <option value=1>Selangor</option>
                            <option value=2>Kedah</option>
                            <option value=3>Perak</option>
                            <option value=4>Malacca</option>
                            <option value=5>Kelantan</option>
                            <option value=6>Terengganu</option>
                            <option value=7>Johore</option>
                            <option value=8>Penang</option>
                          </select></td>
                    </tr>
                    <tr>
                       <td>Status: </td>
                        <td><select name="status">
                            <option value="Item delivered">Item delivered</option>
                            <option value="Item out for delivery">Item out for delivery</option>
                            <option value="Arrive at delivery facility">Arrive at delivery facility</option>
                            <option value="Item processed">Item processed</option>
                            <option value="Item dispatched out">Item dispatched out</option>
                            <option value="Item posted over the counter">Item posted over the counter</option>
                            <option value="Direct delivery to customer">Direct delivery to customer</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Vehicle Type: </td>
                        <td>
                            <select name="vehicleId">
                                <option value=0>None</option>
                                <option value=1>van</option>
                                <option value=2>lorry</option>
                                <option value=3>motorcycle</option>
                                <option value=4>car</option>
                                <option value=5>ship</option>
                                <option value=6>air</option>
                              
                            </select>
                        </td>
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
                                <%= request.getAttribute("errMessage") %>
                                <%
                            }
                                %></p>
            
            
            
            
        </form>
        
        
        
        
    </body>
    </center>
</html>
