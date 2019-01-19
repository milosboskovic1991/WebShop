<%-- 
    Document   : forbidden
    Created on : Jan 11, 2019, 2:45:19 AM
    Author     : Max Bosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forbidden Page</title>
    </head>
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">      
            <div id="forbidden">
                <img src="images/forbidden403.png" alt="forbidden">
            </div>
        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>