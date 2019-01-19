<%-- 
    Document   : admin.jsp
    Created on : Jan 11, 2019, 2:42:42 AM
    Author     : Max Bosh
--%>

<%@page import="model.Item"%>
<%@page import="model.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ArrayList<Manufacturer> manufacturers = Queries.getAllManufacturers();%>
<%ArrayList<Item> items = Queries.getAllItems();%>


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
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <form method="post" action="AdminServlet">
                <h2>ADD CATEGORY</h2>
                    <hr>
                    <label for="f_name"><b>Category Name</b></label><br>
                    <input type="text" placeholder="Enter Category Name" name="category_name" required>           
                    <div class="add">
                    <input id="adminBtn" type="submit" name="action" value="Add category">
                    </div>
                    <hr>
            </form>
            <form method="post" action="AdminServlet">
                <h2>DELETE CATEGORY</h2>
                    <hr>
                    <label for="f_name"><b>Category Name</b></label><br>
                    <select id="city" name="category">
                        <% for(int i=0; i<categories.size(); i++){ %>
                        <option value='<%=categories.get(i).getId()%>'><%=categories.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>         
                    <div class="add">
                    <input id="adminBtn" type="submit" name="action" value="Delete category">
                    </div>
                    <hr>
            </form>
            <form method="post" action="AdminServlet">        
                <h2>ADD MANUFACTURER</h2>
                    <hr>
                    <label for="f_name"><b>Manufacturer Name</b></label><br>
                    <input type="text" placeholder="Enter Manufacturer Name" name="manufacturer_name" required>           
                    <div class="add">
                    <input id="adminBtn" type="submit" name="action" value="Add manufacturer">
                    </div>
                    <hr>
            </form>  
            <form method="post" action="AdminServlet">        
                <h2>DELETE MANUFACTURER</h2>
                    <hr>
                    <label for="f_name"><b>Manufacturer Name</b></label><br>
                    <select id="city" name="manufacturer">
                        <% for(int i=0; i<manufacturers.size(); i++){ %>
                        <option value='<%=manufacturers.get(i).getId()%>'><%=manufacturers.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>         
                    <div class="add">
                        <input id="adminBtn" type="submit" name="action" value="Delete manufact">
                    </div>
                    <hr> 
            </form>        
            <form method="post" action="AdminServlet">        
                <h2>ADD ITEM</h2>  
                    <hr>
                    <label for="f_name"><b>Name</b></label><br>
                    <input type="text" placeholder="Enter Item Name" name="item_name" required>
                    <label for="f_name"><b>Price</b></label><br>
                    <input type="text" placeholder="Enter Price" name="price" required>
                    <label for="f_name"><b>Manufacturer Name</b></label><br>
                    <select id="city" name="manufacturer" >
                        <% for(int i=0; i<manufacturers.size(); i++){ %>
                        <option value='<%=manufacturers.get(i).getId()%>'><%=manufacturers.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>
                    <label for="f_name"><b>Category Name</b></label><br>
                    <select id="city" name="category">
                        <% for(int i=0; i<categories.size(); i++){ %>
                        <option value='<%=categories.get(i).getId()%>'><%=categories.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>
                    <label for="f_name"><b>Description</b></label><br><br>
                    <textarea id="description" name="description" rows="10" cols="50">

                    </textarea><br>
                    <div class="add">
                        <input id="adminBtn" type="submit" name="action" value="Add item">
                    </div>
                    <hr> 
            </form>        
            <form method="post" action="AdminServlet">        
                <h2>DELETE ITEM</h2>
                    <hr>
                    <label for="f_name"><b>Item Name</b></label><br>
                    <select id="city" name="item">
                        <% for(int i=0; i<items.size(); i++){ %>
                        <option value='<%=items.get(i).getId()%>'><%=items.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>         
                    <div class="add">
                        <input id="adminBtn" type="submit" name="action" value="Delete item">
                    </div>
                    <hr>
            </form>
            
        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>
