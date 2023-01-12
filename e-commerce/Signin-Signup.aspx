<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signin-Signup.aspx.cs" Inherits="Signin_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- link style Css   -->
    <!-- <link rel="stylesheet" href="CSS/styles_Singin-Singup.css"> -->
    <link rel = "stylesheet" href="CSS/styles_Singin-Singup.css">
    <!-- normalize Css -->
    <link rel="stylesheet" href="CSS/normaliz.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="CSS/all.min.css" />
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@600&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300&display=swap" rel="stylesheet">
    <title>SignIN Signup</title>
</head>
<body runat="server">
    
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form id="supform" method="post" enctype="multipart/form-data" runat="server"  >
                <h1>Create Account</h1>
                <!--<div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registration</span>-->
                <asp:TextBox ID="supname" runat="server" placeholder="Name"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="supname" ErrorMessage="Please Enter Username.....!"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="supemail" runat="server" placeholder="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="supemail" ErrorMessage="Please Enter Your Email...! "></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="suppass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="suppass" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$" ErrorMessage="Password Must be 3 to 10 Characters"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="suppass" ErrorMessage="Please Enter Your Password...!"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="suppassagain" runat="server" TextMode="Password" placeholder="Confirm Password" ></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="suppassagain" ControlToCompare="suppass" ErrorMessage="Password Not Match"></asp:CompareValidator>
                <!--<input type="text" name="namee" placeholder="Name" required />
                <input type="email" name="email" placeholder="Email" required />
                <input type="password" name="password" placeholder="Password" required />
                <input type="file" name="image">-->
                <br />
                <button id="Button1" runat="server"  onclick="Signup_Click" >Sign Up</button>
                <!--<button type="submit">Sign Up</button>-->
                <asp:Label ID="Label1" Visible="false" runat="server" Text="You are Successfully Registered please Signin Now..."></asp:Label>
            </form>
        </div>


        <div class="form-container sign-in-container">



            <form id="sinform" method="post" runat="server" visible="true" >
                <h1>Sign in</h1>
                <div class="social-container">
                   <!-- <a onclick="" href="#" class="social"><i class="fab fa-google-plus-g"></i></a>-->
                    <asp:Button ID="LinkButton1" OnClick="signGoogle_Click" CssClass="social" runat="server" Text="google"/>
                </div>
                <span>or use your account</span>
                <asp:TextBox ID="sinemail" runat="server" placeholder="Email"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="sinpass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>

                <a style="color:black" href="PHP/forgetpass.php">Forgot your password?</a>
                <asp:Button id="Button2" runat="server"  OnClick="Signin_Click" Text="Sign In" />

                <!--<button>Sign In</button>-->
            </form>




        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button  class="ghost" id="signUp" >Sign Up</button>

                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <b> Follow me on </b>
        <div class="icons">
            <a href="#" target="_blank" class="social"><i class="fab fa-github"></i></a>
            <a href="#" target="_blank" class="social"><i class="fab fa-instagram"></i></a>
            <a href="#" target="_blank" class="social"><i class="fab fa-medium"></i></a>
            <a href="#" target="_blank" class="social"><i class="fab fa-twitter-square"></i></a>
            <a href="#" target="_blank" class="social"><i class="fab fa-linkedin"></i></a>
        </div>
    </div>
    <script src="JavaScript/Signin-Signup.js"></script>
    <script src="JavaScript/chat-bot.js"></script>
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    
</body>
</html>
