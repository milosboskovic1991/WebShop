<%-- 
    Document   : index
    Created on : Dec 27, 2018, 12:47:27 PM
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
        <title>Home Page</title>
    </head>
    
    <%if (request.getAttribute("registerSuccess") == "success") {%>
    <script>registerSuccess();</script>
    <%}%>
    
    <%if (request.getAttribute("loginSuccess") == "success") {%>
    <script>loginSuccess();</script>
    <%}%>
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <div id="logo">
                <img src="images/logo.png" alt="logo"/>
            </div>    
            <p id="onindex">WELCOME</p>
            <%if(request.getSession().getAttribute("username")==null){%>
            <p class="onindex1">If you would like to shop, please log in</p>
            <div id="accountnavbuttons">
                <a href="login.jsp" class="accountnavbutton">Login</a>
            </div>
            <p class="onindex1">Or, if you do not have an account, you can register an account below</p>
            <div id="accountnavbuttons">
                <a href="register.jsp" class="accountnavbutton">Register</a>
            </div>
            <%}%>
        </div>   
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
