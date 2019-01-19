<%-- 
    Document   : navigatorBar
    Created on : Dec 27, 2018, 5:02:32 PM
    Author     : Max Bosh
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="database.Queries"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ArrayList<Category> categories = Queries.getAllCategories();%>

<%
    String username = "";
    try {
        Object u = request.getSession().getAttribute("username");
        username = u.toString();
    } catch (Exception e) {
    }
%>
        
        
<div class="navbar">
    <a href="index.jsp">HOME PAGE</a>
    <div class="dropdown">
        <button class="dropbtn">PRODUCTS</button>
        <div class="dropdown-content">
            <% for (int i = 0; i < categories.size(); i++) {%>
            <a href="items.jsp?category=<%=categories.get(i).getId()%>"> 
                <%=categories.get(i).getName()%>
            </a>
            <% };%>
        </div>
    </div>
    <a href="contact.jsp">CONTACT US</a>
    <div class="log">
    <% if(request.getSession().getAttribute("username")==null){%>
    <a  href="login.jsp">LOGIN</a>
    <a href="register.jsp">REGISTER</a>
    <% }else {%>
    <a href="account.jsp">Welcome, <%=request.getSession().getAttribute("username")%></a>
    <% if (username.equals("admin")) { %>
    <a href="admin.jsp">ADMIN PAGE</a>    
    <% }%>
    <a href="LogoutServlet">LOGOUT</a>
    <% } %>    
    </div>
</div>

