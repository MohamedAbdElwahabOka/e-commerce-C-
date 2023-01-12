<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="CSS/Home_style.css">
    <link rel="stylesheet" href="CSS/Responsive-Home.css">
    <!-- normalize Css -->
    <link rel="stylesheet" href="CSS/normaliz.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="CSS/all.min.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@600&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- AboutUS  -->
    <div id="AboutUS" style="padding-top:25%">
        <div class="container">
            <!-- <h1 class="About"><i class="fa-solid fa-address-card"></i>About US</h1> -->
            <div class="main">
                <div class="profile-card">
                    <div class="img">
                        <img src="imgs/Mohamed.jpg">
                    </div>
                    <div class="caption">
                        <h3>Mohamed Abdelwahab</h3>
                        <p>Junior Software Engineer</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/profile.php?id=100010158949494 target="_blank""><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
                <div class="profile-card">
                    <div class="img">
                        <img src="imgs/Hager.jpeg">
                    </div>
                    <div class="caption">
                        <h3>Hager Ashraf</h3>
                        <p>Junior Software Engineer</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/profile.php?id=100009051716316" target="_blank"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>

                <div class="profile-card">
                    <div class="img">
                        <img src="imgs/Fatma.jpeg">
                    </div>
                    <div class="caption">
                        <h3>Fatma Tarek</h3>
                        <p>Junior Software Engineer</p>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
                <div class="profile-card">
                    <div class="img">
                        <img src="imgs/nabil.png">
                    </div>
                    <div class="caption">
                        <h3>Nabil Mohamed</h3>
                        <p>Junior Software Engineer</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/lightning.black.359 target="_blank""><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
                <div class="profile-card">
                    <div class="img">
                        <img src="imgs/besho.png">
                    </div>
                    <div class="caption">
                        <h3>Besho Mark</h3>
                        <p>Junior Software Engineer</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/beshoy.mark.elmallah target="_blank""><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>

            </div>
            <h1>Hi !</h1>
            <h4>We are the <span>PaCoders</span></h4>
            <p>We are here to bring to you professionally developed software websites,applications and UI/UX designs.
            </p>
        </div>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="JavaScript/Home.js"></script>
</asp:Content>

