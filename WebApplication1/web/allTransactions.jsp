<%-- 
    Document   : allTransactions
    Created on : Jan 14, 2019, 7:04:02 PM
    Author     : Max Bosh
--%>



<%@page import="model.Transaction"%>
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
    public static String convertListToTable(ArrayList<Transaction> transactions)
    {
        String html = "<table class=\"tables\" border='1' cellspacing='5'>";
        html += "<tr>";
        html += "<th>Transaction ID</th>";
        html += "<th>Date</th>";
        html += "<th>Item</th>";
        html += "<th>User</th>";
        html += "<th>Approved</th>";
        html += "</tr>";
        for(int i =0; i<transactions.size(); i++)
        {
            html +="<tr>";
            html +="<td>" + transactions.get(i).getId() + "</td>";
            html +="<td>" + transactions.get(i).getDate() + "</td>";
            html +="<td>" + transactions.get(i).getItem().getName()+ "</td>";
            html +="<td>" + transactions.get(i).getUser().getUsername()+ "</td>";
            if(transactions.get(i).getApprove().equals("no")){
            html +="<td>" + "<a href='ApproveServlet?transaction_id="+transactions.get(i).getId()+"'>"+ transactions.get(i).getApprove() +"</a>" + "</td>";  
            }else{
            html +="<td>"+transactions.get(i).getApprove()+"</td>";    
            }    
            html +="</tr>";             
        }
        html += "</table>";
        return html;
    }
%>
<%  
    ArrayList<Transaction> transactions = Queries.getAllTransactions();
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Transactions</title>
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
