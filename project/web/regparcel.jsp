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
        <form action="checkparcel.jsp" method="post">
       
        <table border="0">
            
            <tr><th>Sender Information</th>
                <td></td>
                <th>Parcel Information</th>
                <td></td></tr>
       <tr>
                    <td><label for="senderName">Sender Name <font color = "#FF0000">*</font></label></td>
                    <td> <input type = "text" name = "custsname" ></td>
                    <td><label for="weight">Net Weight <font color = "#FF0000">*</font></label></td>
                    <td><input type = "number" name = "weight" > </td>
                </tr>
            
                <tr>
                    <td><label for="phone">Sender Phone Number <font color = "#FF0000">*</font></label></td>
                    <td>  <input type = "number" name = "custsphone" size = "20" ></td>
                   <td><label for="height">Net Height <font color = "#FF0000">*</font></label> </td>
                    <td><input type = "number" name = "height" ></td>
                </tr>
                <tr>
                    <td><label for="SenderAddress">Sender Address <font color = "#FF0000">*</font></label></td>
                    <td>  <input type = "text" name = "custsadd" size = "50" ></td>
                         <td><label for="shiptype">Ship type: <font color = "#FF0000">*</font></label> </td>
                    <td><select size = "1" name = "shiptype">
                            <option value = "0.00">Please select</option>
                <option value = "10.00">Land</option>
                <option value = "25.00">Air </option>
                <option value = "26.00">Sea </option>
                </select></td>
                </tr>
                <tr>
                    <td> <label for="Sposcode"> Postcode <font color = "#FF0000">*</font></label></td>
                    <td> <input type = "number" name = "custsposcode"></td>
                    <td> </td>
                    <td></td>
                </tr>
                <tr>
                    <td> <label for="Semail"> Email <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custsemail" size = "23" > </td>
                        <td><label for="staff"> Staff ID <font color = "#FF0000">*</font></label></td>
                    <td><input type = "number" name = "staffid"></td>
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
                    <td><label for="ReceiverName">Receiver Name <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custrname" ></td>
                    <td> </td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rtelephone">Receiver Phone Number <font color = "#FF0000">*</font></label> </td>
                    <td> <input type = "number" name = "custrphone" size = "20" ></td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td><label for="ReceiverAddress"> Receiver Address <font color = "#FF0000">*</font></label></td>
                    <td><input type = "text" name = "custradd" size = "50" > </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Rpostcode">Postcode<font color = "#FF0000">*</font></label></td>
                    <td><input type = "number" name = "custrposcode" size = "20"> </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><label for="Remail">Email <font color = "#FF0000">*</font></label> </td>
                    <td><input type = "text" name = "custremail" size = "20" > </td>
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
       
            <font color = "#FF0000" > * required fields </font><br>
        
          
                <input type = "reset" value = "Reset"> <input type = "submit" value = "Submit">
         </form>
    </center>
</html>
