<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="BookWorm.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Book Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/entrystyle.css" rel="stylesheet" />
    <style>
       header{
    width:100%;
    height:100px;
    background-color:#111;
}

header .header-logo {
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-size: 24px;
    font-weight: 900;
    color: #fff;
    text-transform: uppercase;
    display: block;
    margin: 0 auto;
    text-align: center;
    padding: 20px 0;
   
}
header nav {
    display: block;
    margin: 0 auto;
    text-align:center;
} 
header nav ul
{
  display:block;
  margin:0 auto;
  width:fit-content;

}
header nav ul li {
    display: inline-block;
    float: left; /*to avoid slight gap between the links*/
    list-style: none;
    padding: 0 16px;
    
}
header nav ul li a {
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-size: 16px;
    color: #fff;
    text-decoration: none;
    padding: 10px;
}
.header-register{
    display:none;
}
            
            
        .contact{
            width:85%;
            height:350px;
            display:block;
            margin:0 auto;
            margin-left:20px;
        }
      h3{
            text-align:center;
           text-decoration:underline;
           color:orangered;
        }
        .contact td{
            padding:15px;
        }
        #map{
            padding:20px;
        }
        @media only screen and (min-width:1000px) {
            .ctable {
                width: 800px;
                height: 350px;
                display: block;
                margin: 0 auto;
                margin-left:500px;

                
            }  
           .ctable tr td:nth-child(even){
               width:250px;
                padding-right:10px;
           }
            
              header .header-logo {
      float:left;
      margin-left:20px;
     padding:0;
     margin-top:36.25px;
    }
    header nav {
        float: right;
        margin-right: 20px;
        padding: 0;
        margin-top:40px;
    }
    header nav ul li a {
       
        font-size: 24px;
        text-decoration:none !important;
      
    }
          h3{
             
              padding-left:100px;
          }  
          #map{
            padding:100px;
            margin-left:150px;
        }
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
        
        <div class="contact">
             <h3 >CONTACT US</h3>
             <div class="ctable">
           
            <table class="contacttable">
                <tr class="row">
                <td>Name :</td><td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" style="border:1px solid #111;"></asp:TextBox></td></tr>
                <tr class="row"><td>Email :</td><td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" style="border:1px solid #111;"></asp:TextBox></td></tr>
                <tr class="row"><td>Message :</td><td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" style="border:1px solid #111;"></asp:TextBox></td></tr>
                <tr class="row"><td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-warning" style="display:block;margin:0 auto;color:#111;font-weight:800;"/></td></tr>
            </table>
            </div>
        </div>
      
        <h3 >FIND US ON THE MAP</h3>
        <div id="map" style="padding-top:40px;" >
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317718.69336563244!2d-0.38178689589889525!3d51.52830796016302!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C%20UK!5e0!3m2!1sen!2sae!4v1579780917416!5m2!1sen!2sae" width="100%" height="500px" frameborder="0" style="border:1px solid #3E2C2E;" allowfullscreen=""></iframe>
        </div>
    </form>
</body>
</html>
