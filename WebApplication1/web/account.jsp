<%-- 
    Document   : account
    Created on : Jan 11, 2019, 1:50:48 PM
    Author     : Max Bosh
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account - <%=(String) session.getAttribute("username")%></title>
    </head>
    <% String userName=(String)session.getAttribute("username");
    User u1=Queries.getUser(userName);     
    %>
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <div id="userinfo">
                First name: <%out.println(u1.getF_name());%><br>
                Last name: <%out.println(u1.getL_name());%><br>
                Phone number: <%out.println(u1.getPhone());%><br>
                E-mail: <%out.println(u1.getEmail());%><br>
                Address: <%out.println(u1.getAddress());%><br>
                City: <%out.println(u1.getCity().getName());%>
            </div> 
            <br>
            <%if(!userName.equals("admin")){%>
                <div id="accountnavbuttons">
                    <a href="transactions.jsp" class="accountnavbutton">Transaction List</a>
                </div>
            <%}else{%>
                <div id="accountnavbuttons">
                <a href="allTransactions.jsp" class="accountnavbutton">Transaction List</a>
                </div><br>
                <div id="accountnavbuttons">
                <a href="allUsers.jsp" class="accountnavbutton">User List</a>
                </div><br>
            <%}%>
        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
