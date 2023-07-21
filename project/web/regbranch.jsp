<%-- 
    Document   : regbranch
    Created on : Jul 16, 2023, 1:13:03 AM
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
                <p style="background-color:#F7DC6F">  <h1>Add Branch</h1> </p>
            <form action="checkbranch.jsp" method="POST">
                <table>
                    <tr>
                        <td>Branch Location: </td>
                        <td><select name="location">
                                <option value="Selangor">Selangor</option>
                                <option value="Kedah">Kedah</option>
                                <option value="Perak">Perak</option>
                                <option value="Malacca">Malacca</option>
                                <option value="Kelantan">Kelantan</option>
                                <option value="Terengganu">Terengganu</option>
                                <option value="Johore">Johore</option>
                                <option value="Penang">Penang</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Postcode</td>
                        <td><input type="number" name="poscode" placeholder="Enter the postcode" /></td>
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
