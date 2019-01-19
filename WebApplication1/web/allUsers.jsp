<%-- 
    Document   : allUsers
    Created on : Jan 14, 2019, 7:28:44 PM
    Author     : Max Bosh
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username1 = "";
    try {
        Object u = request.getSession().getAttribute("username");
        username1 = u.toString();
    } catch (Exception e) {
    }
    if (!username1.equals("admin")) {
        response.sendRedirect("forbidden.jsp");
    }
%>
<%!
    public static String convertListToTable(ArrayList<User> users)
    {
        String html = "<table class=\"tables\" border='1' cellspacing='5'>";
        html += "<tr>";
        html += "<th>User ID</th>";
        html += "<th>First Name</th>";
        html += "<th>Last Name</th>";
        html += "<th>Address</th>";
        html += "<th>City</th>";
        html += "<th>Phone</th>";
        html += "<th>E-mail</th>";
        html += "</tr>";
        for(int i =0; i<users.size(); i++)
        {
            html +="<tr>";
            html +="<td>" + users.get(i).getId() + "</td>";
            html +="<td>" + users.get(i).getF_name() + "</td>";
            html +="<td>" + users.get(i).getL_name()+ "</td>";
            html +="<td>" + users.get(i).getAddress()+ "</td>";
            html +="<td>" + users.get(i).getCity().getName()+ "</td>";
            html +="<td>" + users.get(i).getPhone()+ "</td>";
            html +="<td>" + users.get(i).getEmail()+ "</td>";
            html +="</tr>";
        }
        html += "</table>";
        return html;
    }
%>

<%  
    ArrayList<User> users = Queries.getAllUsers();
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <script type="text/javascript" src="javascript/js.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Users</title>
    </head>

    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <%=convertListToTable(users)%>
        </div>   
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
