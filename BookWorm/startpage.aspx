<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="BookWorm.startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Book Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial scale=1.0" />
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lateef|Zhi+Mang+Xing&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch:700|Charm|Orbitron|Teko:700" rel="stylesheet"/>
      <link href="css/font-awesome.css" rel="stylesheet" />
     <link  rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <section id="welcome" class="col-md-12">
              <div id="intro" >
                  <p><span style="color:white;font-size:68px;font-weight:900;font-family: 'Zhi Mang Xing', cursive;">The Book Shop</span></p>
                  <p><span style="color:black;font-size:40px;font-weight:900;font-family: 'Lateef', cursive;">A place for reused books</span> </p>
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-danger" style="margin-right:20px;"/>
                  <asp:Button ID="Button2" runat="server" Text="Create Account" CssClass="btn btn-info"/>
              </div>
            </section>
        </div>
    </form>
</body>
</html>
