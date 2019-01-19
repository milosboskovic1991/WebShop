<%-- 
    Document   : items
    Created on : Jan 13, 2019, 3:36:28 AM
    Author     : Max Bosh
--%>

<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int category_id;
    try{
        category_id = Integer.parseInt(request.getParameter("category"));
    }catch(Exception c){
        category_id=1;
    }
    ArrayList<Item> items = Queries.getItemsById(category_id);
%>
<%
    String user = (String)request.getSession().getAttribute("username");
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
        <title>Items</title>
    </head>
    
    <%if (request.getAttribute("purchase") == "success") {%>
    <script> purchaseSuccess(); </script>
    <%}%>
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <div id="products">
            
                <% for (int j = 0; j<items.size(); j++) { %>
                
                <div class="itemi">
                    <p>Category: <%=Queries.getCategoryName(category_id)%></p>
                    <hr>
                    <p>Model: <%=items.get(j).getName()%></p>
                    <hr>
                    <p>Price: <%=items.get(j).getPrice()%></p>
                    <hr>
                    <p>Manufacturer: <%=items.get(j).getManufacturer().getName()%></p>
                    <hr>
                    <p>Description: <%=items.get(j).getDescription()%></p>
                    <hr>
                    <%
                    if(Queries.getCategoryName(category_id).equals("TVs")){%>
                        <img class="images" src="images/television.jpg" alt="slika">
                    <%}else if(Queries.getCategoryName(category_id).equals("Mobile Phones")){%>
                        <img class="images" src="images/phone.jpg" alt="slika">
                    <%}else if(Queries.getCategoryName(category_id).equals("LapTops")){%>
                        <img class="images" src="images/laptop.png" alt="slika">
                    <%}else{%>
                        <img class="images" src="images/tablet.jpg" alt="slika">
                    <%}%>
                    <%if(request.getSession().getAttribute("username")==null ){%>
                    <div id="accountnavbuttons">
                    <a href="login.jsp" class="accountnavbutton">Login to buy</a>
                    </div>
                    <%}else{%>
                    <div id="accountnavbuttons">
                    <a href="TransactionServlet?item_id=<%=items.get(j).getId()%>" class="accountnavbutton">Buy product</a>
                    </div>
                    <%}%>
                </div>
                    
                <% } %>
            </div>

        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
