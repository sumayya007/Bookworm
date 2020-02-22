<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookdetails.aspx.cs" Inherits="BookWorm.bookdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>The Book Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <script src="js/bootstrap.js"></script>
  
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jav.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lateef|Zhi+Mang+Xing&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch:700|Charm|Orbitron|Teko:700" rel="stylesheet"/>
   
    <link href="fontawesome-free-5.12.1-web/css/all.css" rel="stylesheet" />
       <link href="css/font-awesome.css" rel="stylesheet" />
    <style>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;
                      
  }

  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
   
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
   
  }
}
.welcome{
    margin-left:80px;
    padding-top:30px;
    font-size:19px;
    line-height:40px;
    font-weight:700;
  
}
.uhomemain{
   
 
    height:100%;
    width:100%;
    margin-bottom:30px;
   
   
}

.uhomeview{
   
    background-color:#fff;
  width:100%;
    min-height:670px;
   height:100%;
   margin-top:30px;
  

}
.uhomedropdown{
    display:block;
    margin:0 auto;
    width:100%;
    padding:10px;
} 
.uhomedropdown tr td{
    padding-bottom:10px;
}
.uhomedata{
 
   width:100%;
   height:100%;
   display:block;
   margin:0 auto;
    
}

.repeater {
   
    font: 14px segoe ui;
    border-collapse: collapse;
    display:block;
    margin:0 auto;
    width:250px;
    height:500px;
    margin-bottom:30px;
    margin-top:30px;
 
}

.repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:4px;
    padding-bottom:4px;
}
.bookbanner{
    display:none;
 
}
@media only screen and (min-width:1000px){
    .welcome{
      margin-left:200px;
    }
    .repeater {
        width:700px;
        height:500px;
    display:block;
    margin:0 auto;
   
     margin-bottom:20px;
 
}
    .repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:10px;
    padding-bottom:6px;
}
    .uhomedata{
    margin-left:28px;
    width:70%;
    float:left;
    
}
    #one{
        width:40%;
        float:left;
    }
    #one tr td{
        float:left;
    }
    #two{
        width:60%;
        float:right;
    }
.uhomedropdown{
    display:block;
    margin:0 auto;
    width:100%;
    padding-left:80px;
} 
.uhomedropdown tr td{
    padding-bottom:20px;
    padding-right:30px;
}

.bookbanner{
    display:block;
    width:30%;
    height:630px;
    float:right;
    background-image:url("images/shelf2.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position:absolute;
    right:25px;
    top:100px;
  
}
.bookbanner p{
    display:block;
    font-weight:700;
    color:#fff;
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-style:italic;
    font-size:48px;
   text-shadow:2px 2px 8px #111;
    text-align:center;
    margin-top:50px;
}
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="topnav" id="myTopnav">
        <a href="entry.aspx"><span style="font-weight:bold;">THE BOOK SHOP</span></a>
        <a href="userhome.aspx">View Books</a>
        <a href="sellbooks.aspx">Sell Books</a>
        <a href="usersalelist.aspx">My Sale List</a>
        <a href="editsellerdetails.aspx">My Account</a>
        <a href="logout.aspx">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
      
 
</div>   
<div class="welcome">
    Welcome  <asp:Label ID="Label1" runat="server" Text="Label" style="color:red;font-size:24px;padding-left:10px;padding-right:10px;"></asp:Label>,
</div>
 <section class="uhomemain">
    
     <div class="uhomeview">
     
      <div class="uhomedata">
          <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
              <ItemTemplate>
                  <div class="repeater">
                    <table  id="one">
                        <tr><td id="imgbox" colspan="2" >
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("bookcover") %>' Height="250px" Width="200px" style="width:200px;display:block;margin:0 auto;"/>
                            </td>
                        </tr>
                         <tr ><td >Book ID:</td><td ><%#Eval("bookid") %></td> </tr>
                          <tr><td >Seller id:</td><td><%#Eval("sellerid") %></td></tr>
                         <tr><td >Price:</td><td><%#Eval("price") %></td></tr>
                         <tr><td >Discount:</td><td><%#Eval("discount") %></td></tr>
                     </table>
                      <table id="two">
                    
                     <tr><td>Title:</td><td><%#Eval("title") %></td></tr>
                     <tr><td >Author:</td><td><%#Eval("author") %></td></tr>
                    
                     <tr><td >Category:</td><td><%#Eval("category") %></td></tr>
                     <tr><td >Condition:</td><td><%#Eval("condition") %></td></tr>
                    
                      <tr><td >Age:</td><td><%#Eval("age") %></td></tr>
                     <tr><td >Date of Posting:</td><td><%#Eval("dateofposting") %></td></tr>
                     <tr><td >Language:</td><td><%#Eval("language") %></td></tr>
                    
                   
                     <tr><td>Description:</td><td><%#Eval("description") %></td></tr>
                   
                     <tr><td >Location:</td><td><%#Eval("location") %></td></tr>
                     <tr><td>
                         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-sm btn-primary" CommandArgument='<%#Eval("sellerid")%>' OnClick="LinkButton1_Click">Message</asp:LinkButton>
                        </td>
                         <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("bookid")%>' CommandName='<%#Eval("title")%>' Height="20px" Width="20px" ImageUrl="~/images/wishfalse.png" OnClick="ImageButton1_Click"/>
            </td></tr>
                        <tr>
                         <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="View on map" CssClass="btn btn-info form-control"  OnClick="Button1_Click" CommandName='<%#Eval("location")%>' CommandArgument='<%#Eval("location")%>'/></td>
                         </tr>
                      
                    </table>
                </div>
              </ItemTemplate>
          </asp:Repeater>
         
      </div>
         <div class="bookbanner">
             <p>Decluttrer <br />your<br /> Bookshelves <br />without the <br />guilt</p>
         </div>
     </div>
 </section>
         </form>
    <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
   
</body>
</html>
