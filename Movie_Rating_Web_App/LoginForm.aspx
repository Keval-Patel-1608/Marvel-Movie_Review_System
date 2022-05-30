<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Movie_Rating_Web_App.LoginForm" %>
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Login Form</title>
    
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
    <nav class="navbar navbar-expand-sm navbar-dark" style="font-size: 20px; background-color: #121212; padding-top: -500px;">
        <!-- Brand/logo -->
        <a class="navbar-brand" href="/"><img src="imgs/logo.png" style="width: 80px;" alt="MCU"/> </a>
            
        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/" >Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="About.aspx" >About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Terms.aspx" >Terms</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="LoginForm.aspx" ><span class="fa fa-arrow-circle-right">&nbsp Login</span></a>
            </li>
            <li class="nav-item" style="padding-right: 0px;">
                <a class="nav-link" href="Registration.aspx" ><span class="fa fa-user">&nbsp Sign Up</span></a>
            </li>
        </ul>
    </nav>
    <form id="form1" runat="server">
    <section style="background-color: #D6E4ED ; background-image: url('imgs/bg_login.jpg'); background-repeat: no-repeat; background-attachment: fixed ; background-size: 100% 100%;">    
     
    <br /><br /><br />
    <div class="container">
        <div class="row">
             <div class="col-md-6 mx-auto">
                <div class="card bg-dark text-white" style="opacity:0.9; border-radius: 20px;">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/m_profile.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">                                    
                                    <asp:TextBox CssClass="form-control rounded-pill" required="required" ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>

                                <div class="form-group">                                   
                                    <asp:TextBox CssClass="form-control rounded-pill" required="required" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg rounded-pill" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                                    <hr />
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h6 style="color: grey">Don't have an Account ?</h6>
                                        </center>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <a href="Registration.aspx">
                                        <input class="btn btn-primary btn-block btn-lg rounded-pill" id="Button3" type="button" value="Sign Up" />                                           
                                    </a>
                                    <div style="margin-left: auto; margin-right: auto; text-align: center; margin-top:10px;">
                                        <asp:Label ID="Label3" runat="server"></asp:Label>                                        
                                    </div>
                                </div>

                            </div>  
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
         
    <br /><br /><br /><br />
    </section>
    </form>
    <!-- FOOTER -->
        
    <hr style="margin-top:0px; margin-bottom: 0px; height:2px; background-color:white;"/>

    <footer class="footer-07" style="margin-bottom: -20px; background-color:#EC1D23;">
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
                    <p style="color: white;" class="copyright">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
                </div>
            </div>
        </div>
    </footer>
</body>  
</html>  