<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieInfo.aspx.cs" Inherits="Movie_Rating_Web_App.MovieInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Info</title>

    <%-- bootstrap css --%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%-- bootstrap js --%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <!-- footer -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />
    <link rel="stylesheet" href="footer/css/ionicons.min.css" />
    <link rel="stylesheet" href="footer/css/style.css" />

    <!-- Review -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
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


            <div class="movie_information" style="margin-right: 0px; margin-left: 0px;">
                <div class="container">
                    
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="1" CssClass="">
                    <ItemTemplate>                                         
                    
                    <div class="m_i-detail row">

                        <div class="col-md-3">
                            <div class="m_i-d-poster">
                                <div class="film-poster">
                                    <a href="MovieInfo.aspx?movie_id=<%#Eval("Movie_id") %>">
                                        <img alt="Img" class="film-poster-img mx-auto" src='<%# Eval("img_path") %>' />
                                    </a>
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-md-9 pl-xl-5">
                            <div class="m_i-d-content">
                                <div id="block-rating" class="fmrating">
                                    <div class="fmr-score">
                                        <span>IMDB : <%#Eval("imdb_rating") %>
                                            <b class="fas fa-star"></b>
                                        </span>
                                    </div>
                                    
                                </div>
                                <h2 class="heading-name"><%#Eval("name") %></h2>
                                <div class="stats">
                                    <b class="fas fa-video"></b>
                                    <span class="item mr-3"><%#Eval("duration") %></span>                                    
                                </div>
                                <div class="des"></div>
                                <div class="elements">
                                    <div class="row-line">
                                            <span class="type">Country:</span>
                                            <%#Eval("country") %>
                                        </div>
                                        <div class="row-line">
                                            <span class="type">Genre:</span>
                                            <%#Eval("genre") %>
                                        </div>
                                        <div class="row-line">
                                            <span class="type">Released:</span> <%#Eval("released") %>
                                        </div>
                                        <div class="row-line">
                                            <span class="type">Production:</span>
                                            <%#Eval("production") %>
                                        </div>
                                        <div class="row-line">
                                            <span class="type">Casts:</span>
                                            <%#Eval("casts") %>                                                  
                                        </div>
                                    </div>  
                                </div>
                            </div>
                        </div>
                        <div class="m_i-spacing"></div>
                        
                    </div>
                       
                    </ItemTemplate>
                </asp:DataList>                                       
                           
                <div class="row" style="width: 100%;">
                    <div class="col-md-12 mt-4">                               
                        <div class="row">
                            <div class="headings d-flex justify-content-between align-items-center mb-3">
                                <h3>Reviews</h3>                                                
                            </div>                                        
                        </div>
                         
                        <div class="row ml-2">  
                        <asp:DataList runat="server" ID="DataList2">
                            <ItemTemplate>                                                              
                                <div class="card p-3 mb-4">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex"> 
                                            <img src="imgs/m_profile.png" width="30" class="user-img rounded-circle mr-2"/> 
                                            <span>
                                                <small class="font-weight-bold text-primary" style="font-size: 1.3em"><%# Eval("username") %></small><label class="dots ml-2"></label> 
                                                <small class="font-weight-bold text-dark" style="font-size: 1.1em"><%# Eval("comment") %></small>
                                            </span> 
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>  
                        </div>
    
                    <style>                                    
                    .card {
                        border: none;
                        border-radius: 4px;
                        box-shadow: 5px 6px 10px #e9ecef;
                    }

                    .dots {
                        height: 4px;
                        width: 4px;
                        margin: 2px;
                        background-color: #bbb;
                        border-radius: 50%;
                    }

                    .badge {
                        padding: 7px;
                        padding-right: 9px;
                        padding-left: 16px;
                        box-shadow: 5px 6px 6px 2px #e9ecef
                    }

                    .user-img {
                        margin-top: 4px
                    }                    

                    .form-check-input {
                        margin-top: 6px;
                        margin-left: -24px !important;
                        cursor: pointer
                    }

                    .form-check-input:focus {
                        box-shadow: none
                    }

                    .icons i {
                        margin-left: 8px
                    }                    
                    </style>

                    <!-- <h2 style="margin-bottom: 20px; font-size: 1.5em; color: #e9ecef; line-height: 1.3em; font-weight: 500;"><%# Eval("username") %></h2>
                    <p><%# Eval("comment") %></p> -->
                    
                    </div>
                </div>
                            
                      
                    <% if (Session["username"] == null)
                        {
                            %>                            
                            <center><a href="LoginForm.aspx" class="btn btn-primary">Login to Comment</a></center>                                                                              
                        <% }
                     else { %>
                            <section style="width: 99%;">                         
                                <h4 style="color: lightblue">Comment as <% Response.Write(Session["username"]); %></h4>
                                <div data-width="100%" data-colorscheme="dark" data-order-by="reverse_time" data-numposts="3"  fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;container_width=765&amp;height=-->100&amp;href=https%3A%2F%2Ffmoviesto.cc%2Fmovie%2Fspider-man-no-way-home-2021-full-71326&amp;locale=vi_VN&amp;numposts=10&amp;sdk=joey&aion=v4.0&amp;width=" style="width: 100%;">
                                        <asp:TextBox runat="server" ID="cmt_txt" TextMode="MultiLine" Rows="5" class="form-control fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop" placeholder="write your review here"></asp:TextBox>
                                        <asp:Button runat="server" ID="btn_cmt" type="submit" class="btn-primary float-right my-1" Text="Submit" OnClick="btn_cmt_Click"></asp:Button>
                                </div>                               
                            </section>
                        <br />
                               
                   <% } %>                  
              </div>
            </div>
            <div class="m_i-spacing"></div>
            <style>
                .movie_information {
                    position: relative;
                }

                .container {
                    width: 100%;
                    max-width: 94%;
                    padding-right: 15px;
                    padding-left: 15px;
                    margin-right: auto;
                    margin-left: auto;
                }

                .movie_information .m_i-detail {
                    /* float: left; */
                    /* width: 65%; */
                    color: #6c757d;
                }

                .movie_information .m_i-detail .m_i-d-poster {
                    width: 300px;
                    /* float: left; */
                    border: 3px solid rgba(255,255,255,.2);
                    border-radius: 10px;
                    overflow: hidden;
                }

                .film-poster {
                    width: 100%;
                    padding-bottom: 148%;
                    position: relative;
                    overflow: hidden;
                    border-radius: 4px;
                }

                .film-poster .film-poster-img {
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    width: 100%;
                    min-height: 100%;
                }

                .fmrating {
                    position: absolute;
                    border-radius: 5px;
                    overflow: hidden;
                    top: 5px;
                    right: 0;
                    font-size: 18px;
                    min-width: 180px;
                }

                .fmrating .fmr-score {
                    padding: 0;
                    margin: 5px 0 12px;
                    text-align: center;
                }

                .fmrating .fmr-buttons {
                    margin-bottom: 5px;
                    display: block;
                }

                .fmrating .fmr-buttons .btn-fmrate {
                    width: calc(50% - 6px);
                    margin-bottom: 5px;
                    margin-top: 10px;
                    float: left;
                    padding: 0;
                    line-height: 36px;
                    font-size: 13px;
                    background: #ddd;
                    border-radius: 25px;
                }

                .btn:not(:disabled):not(.disabled) {
                    cursor: pointer;
                }

                .btn {
                    position: relative;
                    border: none;
                    overflow: hidden;
                }

                .btn {
                    display: inline-block;
                    font-weight: 400;
                    text-align: center;
                    white-space: nowrap;
                    vertical-align: middle;
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    -ms-user-select: none;
                    user-select: none;
                    border: 1px solid transparent;
                    padding: 0.375rem 0.75rem;
                    font-size: 1rem;
                    line-height: 1.5;
                    border-radius: 0.25rem;
                    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                }

                .m_i-d-content .heading-name {
                    font-size: 3em;
                    color: #e9ecef;
                    line-height: 1.3em;
                    font-weight: 500;
                    margin-bottom: 10px;
                    padding-right: 190px;
                    margin: 0 0 10px;
                }

                .m_i-d-content .stats {
                    margin-bottom: 20px;
                    padding-right: 190px;
                    font-size: 20px;
                }

                .m_i-d-content .des {
                    margin-bottom: 20px;
                    font-size: 116px;
                    line-height: 1.5em;
                }

                .elements .row-line {
                    position: relative;
                    margin-bottom: 10px;
                    overflow: hidden;
                    padding-left: 150px;
                    line-height: 2em;
                    font-size: 20px;
                }

                .elements .row-line .type {
                    position: absolute;
                    left: 0;
                }

                .m_i-spacing {
                    height: 30px;
                    display: inline-block;
                    width: 100%;
                }
                a {
                    text-decoration: none !important; 
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


