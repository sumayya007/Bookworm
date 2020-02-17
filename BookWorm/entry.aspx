<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry.aspx.cs" Inherits="BookWorm.entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Book Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/entrystyle.css" rel="stylesheet" />
     <style>
        main{
            background-image:url("images/backgroundbooks.jpg");
            background-position:center;
            background-repeat:no-repeat;
            background-size:cover;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
           <header>
               <a href="startpage.aspx" class="header-logo">The Book Shop</a>
                <nav>
                    <ul>
                        <li><a href="entry.aspx">Home</a></li>
                        <li><a href="#">About us</a></li>
                        <li><a href="contactus.aspx">Contact us</a></li>
                    </ul>
                </nav>  
               <a href="startpage.aspx" class="header-register">Register</a>
           </header>
           <main>
               <section class="entry-banner">
                   <div class="vertical-center">
                   <h2>The<br />Book Shop</h2>
                   <h1>Your Online Book Store</h1>
                   <ul>
                   <li><a href="login.aspx" class="loginbtn">Login</a></li>
                    <li><a href="register.aspx" class="registerbtn">Register</a></li>
                   </ul>
                   </div>
               </section>
           </main>
           <footer>
               <ul class="footer-link-1">
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Disclaimer</a></li>
                </ul>
                <ul class="footer-link-2">
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact us</a></li>
                </ul>
                <ul class="footer-social-media">
                    <li><a href="#"><img src="images/facebook.png" alt="faceook-icon" /></a></li>  
                    <li><a href="#"><img src="images/twitter.png" alt="gmail-icon" /></a></li>  
                    <li><a href="#"><img src="images/instagram.png" alt="twitter-icon" /></a></li>
                </ul>
            
           </footer>
    </form>
</body>
</html>
