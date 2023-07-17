<%-- 
    Document   : success
    Created on : Jul 17, 2023, 11:56:32 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>success page</title>
    </head>
    
    <center>
    <body>
          <% String successMessage = (String) request.getAttribute("successMessage"); %>

    <% if (successMessage != null) { %>
        <div class="success-message">
            <%= successMessage %>
        </div>
    <% } %>
    </body>
    </center>
</html>
