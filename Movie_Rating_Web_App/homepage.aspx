<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Movie_Rating_Web_App.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marvel Movie Rating</title>

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
                <a class="nav-link" href="/">Home</a>
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
                <a class="nav-link" href="LoginForm.aspx" ><span class="fa fa-arrow-circle-right">&nbsp Login</span></a>
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
    <section style="background-image: url('imgs/bg_2.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-size: 100% 100%; padding-top: 49%"></section>
    <form id="form1" runat="server">
        <section style="background-color: #111111; color: white;">
            <hr style="margin-top: 0px; height: 2px; background-color: white;" />
            
            <div class="container-fluid" style="width: 95%;">
                <h2 style="margin-top: 40px; padding-bottom: 20px; font-family: 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', 'Arial', 'sans-serif' ">Marvel Studios</h2>
                                                              
                <div class="film_list row">
                         
                    <div class="film_list-wrap col-12" style="margin: 0 -.4%;">                           
                            <div class="flw-item mb-3" style="width: 15.86%; position: relative;" >                               

                                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" CssClass="m-1">
                                    <ItemTemplate>
                                        
                                        <div class="spacing">
                                            <div class="film-poster">
                                                <img alt="Img" class="film-poster-img" src='<%# Eval("img_path") %>' />
                                                <a href="MovieInfo.aspx?movie_id=<%#Eval("Movie_id") %>" class="film-poster-ahref flw-item-tip"></a>
                                            </div>
                                            <a href="MovieInfo.aspx?movie_id=<%#Eval("Movie_id") %>">
                                                <div class="film-detail">                                                                                                    
                                                    <h2 class="film-name pt-1"><%#Eval("name") %></h2>
                                                    <div class="fd-infor">                                                    
                                                        <span class="fdi-item"><%#Eval("released") %></span> 
                                                        <span class="dot"></span>
                                                        <span class="fdi-item fdi-duration p-1"><%#Eval("duration") %> </span>
                                                        <span class="float-right fdi-type">Movie</span>
                                                    </div>                                                
                                                </div>
                                            </a>
                                        </div>                                        

                                    </ItemTemplate>
                                </asp:DataList>
                            </div>    
                    </div>   
                            
                </div>
                <br />
            </div>
            
            <br />
            <style>
                .spacing a:hover {
                    color: grey;
                }

                body {
                    font-family: -apple-system,BlinkMacSystemFont,"SegoeUI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
                    color: #bbb;
                    font-size: 15px;
                    line-height: 1.42857;
                    font-weight: 400;
                    padding: 0;
                    margin: 0;
                    -webkit-text-size-adjust: none;
                }

                .spacing {
                    margin: 14px;
                }

                .film-poster {
                    margin-bottom: 0;
                    padding-bottom: 148%;
                    width: 100%;
                    position: relative;
                    overflow: hidden;
                    border-radius: 10px;
                }

                .film-poster-img {
                    vertical-align: middle;
                    border-style: none;
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    width: 100%;
                    min-height: 100%;
                }

                .flw-item .film-poster .film-poster-ahref {
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    z-index: 3;
                    display: inline-block;
                }

                a {
                    color: white;
                    text-decoration: none !important;
                    outline: 0;
                    background-color: transparent;
                }

                .film_list .film_list-wrap .flw-item .film-detail {
                    text-align: left;
                    position: relative;
                    padding: 10px 0;
                    z-index: 3;
                }

                .film_list .film_list-wrap .flw-item .film-detail .film-name {
                    inline-size : 250px;
                    font-size: 15px;
                    line-height: 1.3em;
                    font-weight: 400;
                    margin: 0 0 10px;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    overflow: hidden;
                }

                .film_list .film_list-wrap .flw-item .film-detail .fd-infor {
                    font-size: 14px;
                }

                .dot {
                    width: 4px;
                    height: 4px;
                    border-radius: 50%;
                    background: #fff;
                    display: inline-block;
                    margin: 3px 6px;
                    margin-left: 10px;
                }

                .float-right {
                    float: right !important;
                }

                .film_list .film_list-wrap .flw-item .film-detail .fd-infor .fdi-type {
                    font-size: 12px;
                    line-height: 14px;
                    padding: 2px 4px;
                    border: 1px solid #aaa;
                    border-radius: 3px;
                }

                
            </style>
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
