<%-- 
    Document   : regparcel
    Created on : Jul 17, 2023, 9:43:12 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reg parcel</title>
    </head>
    <center>
    <h1> --Parcel Registration--</h1><br>
        <p>Please enter informations below.</p>
        <form action="RegisterParcelServlet" method="post">
        <form method = "post">
        <table border="0">
            
            <tr><th>Sender Information</th>
                <td></td>
                <th>Parcel Information</th>
                <td></td></tr>
       <tr>
                    <td><label for="senderName">Sender Name <font color = "#FF0000">*</font></label></td>
                    <td> <input type = "text" name = "custsname" ></td>
                    <td><label for="CourierInformation"> Courier Information <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "courierInformation" ></td>
                </tr>
            
                <tr>
                    <td><label for="phone">Sender Phone Number <font color = "#FF0000">*</font></label></td>
                    <td>  <input type = "number" name = "custsphone" size = "20" ></td>
                    <td><label for="trackingNumber">Tracking Number <font color = "#FF0000">*</font></label> </td>
                    <td> <input type = "number" name = "itemid" size = "28" ></td>
                </tr>
                <tr>
                    <td><label for="SenderAddress">Sender Address <font color = "#FF0000">*</font></label></td>
                    <td>  <input type = "text" name = "custsadd" ></td>
                    <td><label for="weight">Net Weight <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "weight" > </td>
                </tr>
                <tr>
                    <td> <label for="Sstreet"> Street <font color = "#FF0000">*</font></label></td>
                    <td> <input type = "text" name = "custscstreet" size = "50"></td>
                    <td><label for="height">Net Height <font color = "#FF0000">*</font></label> </td>
                    <td><input type = "text" name = "height" ></td>
                </tr>
                <tr>
                    <td> <label for="Scity"> City <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custscity" size = "23" > </td>
                        <td><label for="shiptype">Ship type: <font color = "#FF0000">*</font></label> </td>
                    <td><select size = "1" name = "shiptype">
                            <option value = "land">Please select</option>
                <option value = "land">Land</option>
                <option value = "air">Air </option>
                <option value = "sea">Sea </option>
                </select></td>
                </tr>
                <tr>
                    <td><label for="SState"> State <font color = "#FF0000">*</font></label></td>
                    <td> <select size = "1" name = "custsState">
                             <option value = "land">Please select</option>
                <option value = "Selangor">Selangor </option>
                <option value = "Perak">Perak </option>
                <option value = "Kedah">Kedah </option>
                <option value = "Melaka">Melaka </option>
                <option value = "Johor">Johor </option>
                <option value = "Negeri Sembilan">Negeri Sembilan </option>
                </select> </td>
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
                    <td><label for="ReceiverName">Receiver Name <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custrname" ></td>
                    <td> </td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rtelephone">Receiver Phone Number <font color = "#FF0000">*</font></label> </td>
                    <td> <input type = "number" name = "custrtelephone" size = "20" ></td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td><label for="ReceiverAddress"> Receiver Address <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custrAdd" > </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rstreet">Street <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custrRstreet" size = "50"> </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rcity">City <font color = "#FF0000">*</font></label> </td>
                    <td><input type = "text" name = "custrcity" size = "23" > </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="RState"> State <font color = "#FF0000">*</font></label> </td>
                    <td><select size = "1" name = "custrState">
                             <option value = "land">Please select</option>
                <option value = "Selangor">Selangor </option>
                <option value = "Perak">Perak </option>
                <option value = "Kedah">Kedah </option>
                <option value = "Melaka">Melaka </option>
                <option value = "Johor">Johor </option>
                <option value = "Negeri Sembilan">Negeri Sembilan </option>
                </select>  </td>
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
       
            <font color = "#FF0000" > * required fields </font><br>
        
          
                <input type = "reset" value = "Reset"> <input type = "submit" value = "Submit">
         </form>
    </center>
</html>
