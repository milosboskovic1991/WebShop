<%-- 
    Document   : contact
    Created on : Jan 11, 2019, 9:04:51 PM
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
        <title>Contact us</title>
    </head>

    <body>
        <div id="wrapper">
        <%@include file="header.jsp"%>
        <div id="content">
            <div id="kontaktirati">
                <div class="kontakti">
                    <h3>Info, rezervacije, prodaja</h3>
                    <div id="clock">
                    <img src="images/alarm-clock.png" alt="clock"/> 
                    </div>
                    <p>radnim danima 8-12,<br> 
                        subotom 9-16</p>
                    <div id="phone">
                    <img src="images/call.png" alt="phone"/> 
                    </div>
                    <p>069 111 2222</p>
                    
                </div>  
                <div class="kontakti">
                    <h3>Prodaja pravnim licima</h3>
                    <div id="clock">
                    <img src="images/alarm-clock.png" alt="clock"/> 
                    </div>
                    <p>radnim danima 8-18,<br> 
                        subotom 9-13</p>
                    <div id="phone">
                    <img src="images/call.png" alt="phone"/> 
                    </div>
                    <p>069 222 3333</p>
                </div> 
                <div class="kontakti">
                    <h3>Tehnicka podrska</h3>
                    <div id="clock">
                    <img src="images/alarm-clock.png" alt="clock"/> 
                    </div>
                    <p>radnim danima 9-19,<br> 
                        subotom 9-13</p>
                    <div id="phone">
                    <img src="images/call.png" alt="phone"/> 
                    </div>
                    <p>0900 765 4500</p>
                </div>
                <div class="kontakti">
                    <h3>Reklamacije</h3>
                    <div id="clock">
                    <img src="images/alarm-clock.png" alt="clock"/> 
                    </div>
                    <p>radnim danima 8-17,<br> 
                        subotom 9-16</p>
                    <div id="phone">
                    <img src="images/call.png" alt="phone"/> 
                    </div>
                    <p>0700 342 1000</p>
                </div>
            </div>    
        </div>
            
        <%@include file="footer.jsp"%>
        </div> 
    </body> 
</html>