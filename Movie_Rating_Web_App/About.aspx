<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Movie_Rating_Web_App.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terms</title>
    <%-- bootstrap css --%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%-- bootstrap js --%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <!-- footer -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />
    <link rel="stylesheet" href="footer/css/ionicons.min.css" />
    <link rel="stylesheet" href="footer/css/style.css" />
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-dark sticky-top" style="font-size: 20px; background-color: #121212; padding-top: -500px;">
        <!-- Brand/logo -->
        <a class="navbar-brand" href="/">
            <img src="imgs/logo.png" style="width: 80px;" alt="MCU" />
        </a>

        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="homepage.aspx">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="About.aspx">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Terms.aspx">Terms</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <%if (Session["username"] == null)
                { %>
              
                <li class="nav-item">
                <a class="nav-link" href="LoginForm.aspx" ><span class="fa fa-sign-in">&nbsp Login</span></a>
                </li>
                <li class="nav-item" style="padding-right: 0px;">
                    <a class="nav-link" href="Registration.aspx" ><span class="fa fa-user">&nbsp Sign Up</span></a>
                </li>                                
                
            <% } %>
            
            <%else
                { %>
            <li class="nav-item">
                 <a class="nav-link" ><span>Hello <% Response.Write(Session["username"]); %></span></a>               
            </li>
            <li class="nav-item">
                <a class="nav-link" onclick="logOut_Click">&nbsp Logout</a> 
                </li>
            <% } %>
        </ul>
    </nav>
    
    <form id="form1" runat="server">
        <section style="background-color: #111111; color: white;">
            <hr style="margin-top: 0px; height: 3px; background-color: #EC1D23;" />  
            <br />            
            <container style="letter-spacing: 1px">
        
                <div style="text-align: center;">
                   <label style="font-size: 40px;"><b>About Us</b></label>            
                    <br />               
                </div>
                <div style="text-align: center">
                    <img width="300px" src= "imgs/about.png"/>
                </div>  
        
                <div style="padding-left: 5%; width:95%; ">
                   <label style="font-size: large; text-align: left"><b>Privacy Policy </b></label> 
                   <p style="text-align: justify;">
               
                       Welcome to the Marvel Privacy Policy. Protecting your personal data while it is in our care is both an honor and a great responsibility. We have provided the information below to help you understand how your personal data may be collected, used and disclosed by Marvel, and how to exercise your choices with respect to your personal data.
                       <br /><br />    By using Marvel websites, apps, or other online services that link to this Privacy Policy (collectively, “Sites”), you are subject to the terms and conditions of this Policy. When you interact with us or our Sites, Marvel may collect personal data about you in the following ways: directly from you; through automated technologies such as cookies; and from other sources, such as our business partners and data processors.

                   </p>
                </div>        

                <div style="padding-left: 5%; width:95%; text-align: justify;">
                    <label style="font-size: large; text-align: left"><b>Accessibility</b></label> 
                    <p>
                        Marvel is committed to making Marvel - Movie Reviews accessible to all users. We continually review accessibility compliance and development practices to strengthen that commitment and ensure that our content is available to the entire community.
                    </p>
                    <p>
                        Browser Support :
                    </p>
                    <p>
                        Marvel has been built using code compliant with W3C standards for HTML and CSS. The site displays correctly in the latest stable versions of Google Chrome, Microsoft Internet Explorer, Mozilla Firefox, Safari, and Opera. For older browsers, visual design may be slightly compromised but all content will be readable, and features will function as intended. The site can also be accessed on tablet and mobile devices, and a selection of pages are optimized for those devices.
                    </p>
            
                </div>
    
            <br />
            </container>
        </section>
        
        <!-- FOOTER -->       
        <hr style="margin-top: 0px; margin-bottom: 0px; height: 2px; background-color: white;" />

        <footer class="footer-07" style="margin-bottom: -20px; background-color: #EC1D23;">
            <div class="container" style="margin-top: -50px; margin-bottom: -100px;">
                <div class="row justify-content-center">
                    <div class="col-md-12 text-center">
                        <h2 class="footer-heading"><a href="#" class="logo">MarvelReview.com</a></h2>
                        <p class="menu">
                            <a style="color: white;" href="/">Home</a>
                            <a style="color: white;" href="About.aspx">About</a>
                            <a style="color: white;" href="LoginForm.aspx">Login</a>
                            <a style="color: white;" href="Registration.aspx">SignUp</a>
                            <a style="color: white;" href="Terms.aspx">Terms</a>
                        </p>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-md-12 text-center">
                        <p style="color: white;" class="copyright">
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
