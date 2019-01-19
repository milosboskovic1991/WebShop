<%-- 
    Document   : register1
    Created on : Jan 9, 2019, 4:01:46 PM
    Author     : Max Bosh
--%>

<%@page import="model.City"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ArrayList<City> cities = Queries.getAllCities();%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="javascript/design.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register page</title>
    </head>
    
    <%if (request.getAttribute("errorMessage") == "exists") {%>
    <script>usernameExists();</script>
    <%}%>

    
    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <form method="post" action="RegisterServlet">
                <div class="sadrzaj">
                    <h1>Register</h1>
                    <p>Please fill in this form to create an account.</p>
                    <hr>
                    <label for="f_name"><b>First Name</b></label>
                    <input type="text" placeholder="Enter First Name" name="f_name" required>
                    
                    <label for="l_name"><b>Last Name</b></label>
                    <input type="text" placeholder="Enter Last Name" name="l_name" required>
                    
                    <label for="phone"><b>Phone</b></label>
                    <input type="text" pattern="[0-9]{3}/[0-9]{3}-[0-9]{4}" placeholder="Enter Phone in format 123/456-7890" name="phone" required>
                    
                    <label for="email"><b>Email</b></label>
                    <input type="text" pattern="[a-zA-Z0-9]+[._a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]*[a-zA-Z]*@[a-zA-Z0-9]{2,8}.[a-zA-Z.]{2,6}" placeholder="Enter Email" name="email" required>
                    
                    <label for="address"><b>Address</b></label>
                    <input type="text" placeholder="Enter Address" name="address" required>
                    
                    <label for="city"><b>City</b></label><br>
                    <select id="city" name="city">
                        <% for(int i=0; i<cities.size(); i++){ %>
                        <option value='<%=cities.get(i).getId()%>'><%=cities.get(i).getName()%></option>
                        <% } %>
                    </select><br><br>
                    
                    <label for="username"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required>

                    <label for="password"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required>
                    
                    <hr>

                    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                    <button type="submit" class="registerbtn">Register</button>
                </div>

                <div class="container signin">
                    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
                </div>
            </form>
        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body>
        
    
    
</html>
