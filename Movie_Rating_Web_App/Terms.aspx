<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="Movie_Rating_Web_App.Terms" %>

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
            <container>
                <div style="text-align: center">
                    <label style="font-size: 40px;"><b>Terms</b></label>            
                    <br />               
                </div>
        
                <div style="text-align: center;">
                    <img width="300px" src="imgs/terms.png" />
                </div>                 

                <div style="padding-left: 5%; width:95%; text-align: justify; letter-spacing: 1px">
                    <label style="font-size: large; text-align: left"><b>Terms of Use </b></label> 
                    <p>
                        The following Terms of Use govern use by all Users of Marvel - Movie Reviews (or any successor thereto) and the electronic edition of the products subscribed to by an Authorized User or the Authorized User's institution (the “Customer”). Please read the following carefully because by using Marvel - Movie Reviews you are agreeing to abide by these Terms of Use. Your institution may have a license which permits you additional uses; contact your institution's administrator for more information. If you or your institution entered into a license with Marvel(the “License”), the terms of the License control in the event of any discrepancy between it and these Terms of Use.
                    </p>
                    <p>
                        Copyright:
                    </p>
                    <p>
                        The Electronic Products, Marvel - Movie Reviews and the Intellectual Property Rights contained therein are protected by law. As a User, you have certain rights and all the other rights are reserved.
                    </p>
                    <p>
                        Rules of Use:
                    </p>
                    <p>
                        1. Users may browse all Tables of Content for all Categories on Marvel - Movie Reviews, regardless of what Licensed Products the Customer subscribes to, and search the entire database of Tables of Content and abstracts. For most publications, Users may browse the abstracts as well.
                    </p>
                    <p>
                        2. All Users have the option to create a Profile Page which will allow them to add coomments/reviews. In order to do so, Users must register. During the registration process, Users will select and register a user name and password which they must keep confidential and not disclose to or share with anyone else.
                    </p>
                </div>
        
            </container>
            <br />
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
