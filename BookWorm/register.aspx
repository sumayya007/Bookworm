<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BookWorm.register" %>

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
                       <table class="login-table">
                           <tr>
                               <th>Register</th>
                           </tr>
                            <tr>
                               <td>
                                   <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:TextBox ID="TextBox1" runat="server" BorderColor="#CC0066" ForeColor="White"></asp:TextBox></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:Label ID="Label2" runat="server" Text="password">Password</asp:Label></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:TextBox ID="TextBox2" runat="server" BorderColor="#CC0066" ForeColor="White" TextMode="Password"></asp:TextBox></td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Label ID="Label3" runat="server" Text="repassword">Re-enter Password</asp:Label></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:TextBox ID="TextBox3" runat="server" BorderColor="#CC0066" ForeColor="White" TextMode="Password"></asp:TextBox></td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Label ID="Label4" runat="server" Text="email">Email</asp:Label></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:TextBox ID="TextBox4" runat="server" BorderColor="#CC0066" ForeColor="White"></asp:TextBox></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:Label ID="Label5" runat="server" Text="email">Username</asp:Label></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:TextBox ID="TextBox5" runat="server" BorderColor="#CC0066" ForeColor="White"></asp:TextBox></td>
                           </tr>
                            <tr>
                               <td>
                                   <asp:Button ID="Button1" runat="server" Text="Register" Cssclass="btn btn-primary" OnClick="Button1_Click"/></td>
                           </tr>
                            <tr>
                               <td><span style="font-size:16px;">Already have an account?</span><a href="login.aspx">Login here</a></td>
                           </tr>
                           
                       </table>
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
