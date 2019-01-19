<%-- 
    Document   : login
    Created on : Jan 9, 2019, 4:07:45 PM
    Author     : Max Bosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    
    <%if (request.getAttribute("errorMessage") == "error") {%>
    <script>userInvalid();</script>
    <%}%>
    
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <form method="post" action="LoginServlet">
            <div class="sadrzaj">
            
                <h1>Login</h1>
                <p>Please fill in this form to Login.</p>
                <hr>

                <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" required>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <hr>
                <button type="submit" class="registerbtn">Login</button>
            </div> 
        </form>
        <%@include file="footer.jsp"%>
        </div> 
    </body>
</html>
