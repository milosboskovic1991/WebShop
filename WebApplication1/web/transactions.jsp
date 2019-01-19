<%-- 
    Document   : transactions
    Created on : Jan 14, 2019, 6:15:08 PM
    Author     : Max Bosh
--%>

<%@page import="model.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    public static String convertListToTable(ArrayList<Transaction> transactions)
    {
        String html = "<table class=\"tables\" border='1' cellspacing='5'>";
        html += "<tr>";
        html += "<th>Transaction ID</th>";
        html += "<th>Date</th>";
        html += "<th>Item</th>";
        html += "<th>User</th>";
        html += "</tr>";
        for(int i =0; i<transactions.size(); i++)
        {
            html +="<tr>";
            html +="<td>" + transactions.get(i).getId() + "</td>";
            html +="<td>" + transactions.get(i).getDate() + "</td>";
            html +="<td>" + transactions.get(i).getItem().getName()+ "</td>";
            html +="<td>" + transactions.get(i).getUser().getUsername()+ "</td>";
            html +="</tr>";
        }
        html += "</table>";
        return html;
    }
%>
<%  String user = (String) request.getSession().getAttribute("username");
    int u_id = Queries.getUserId(user);
    ArrayList<Transaction> transactions = Queries.getTransactionByUser(u_id);
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transactions</title>
    </head>
 
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <%=convertListToTable(transactions)%>
        </div>   
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
