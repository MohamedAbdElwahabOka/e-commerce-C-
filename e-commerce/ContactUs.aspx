<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
   
     <!-- Start Contact  -->
    <div id="Contact" style="padding-top:25%">
        <div class="container">
            <div class="contact">
                <div class="contact-box">
                    <div class="contact-links">
                        <h2 class="con">CONTACT</h2>
                        <div class="links">
                            <div class="link">
                                <a><img class="imge" src="https://i.postimg.cc/m2mg2Hjm/linkedin.png" alt="linkedin"></a>
                            </div>
                            <div class="link">
                                <a><img class="imge" src="https://i.postimg.cc/YCV2QBJg/github.png" alt="github"></a>
                            </div>
                            <div class="link">
                                <a><img class="imge" src="https://i.postimg.cc/W4Znvrry/codepen.png" alt="codepen"></a>
                            </div>
                            <div class="link">
                                <a><img class="imge" src="https://i.postimg.cc/NjLfyjPB/email.png" alt="email"></a>
                            </div>
                        </div>
                    </div>
                    <div class="contact-form-wrapper">
                        <form>
                            <div class="form-item">
                                <input type="text" name="sender" required>
                                <label>Name:</label>
                            </div>
                            <div class="form-item">
                                <input type="text" name="email" required>
                                <label>Email:</label>
                            </div>
                            <div class="form-item">
                                <textarea class="" name="message" required></textarea>
                                <label>Message:</label>
                            </div>
                            <button class="submit-btn">Send</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="JavaScript/Home.js"></script>
</asp:Content>

