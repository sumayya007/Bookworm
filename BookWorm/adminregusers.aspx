<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregusers.aspx.cs" Inherits="BookWorm.adminregusers" %>

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
     <link href="css/entrystyle.css" rel="stylesheet" />
     <style>


.sidepanel  {
  width: 0;
  height:100%;
  position: fixed;
  z-index: 1;
 
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidepanel a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 19px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidepanel a:hover {
  color: #f1f1f1;
}

.sidepanel .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}
.mainnav{
    background-color:#111;
    height:55px;
}
.openbtn {
  font-size: 21px;
  cursor: pointer;
  background-color: #111;
  color: white;
  padding: 10px 15px;
  border: 1px solid #111;
}

.openbtn:hover {
  background-color:#444;
}
.topnav {
  overflow: hidden;
  background-color: #111;
  z-index:1;
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
             .topnav.responsive {
                 position: relative;
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
.left{
    float:left;
}
.right{
    float:right;
}
.repeater {
   
    font: 14px segoe ui;
    border-collapse: collapse;
    display:block;
    margin:0 auto;
    width:80%;
    margin-bottom:30px;
    margin-top:30px;
 
}

.repeater tr td{
    padding-left:2px;
    padding-right:2px;
    padding-top:4px;
    padding-bottom:4px;
}

         @media only screen and (min-width:1000px) {

             .repeater {
   
 
    display:inline-block;
    margin:0 auto;
    width:fit-content;
    /*margin-bottom:30px;
    margin-top:30px;
    margin-left:40px;*/
 
}
    .repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:4px;
    padding-bottom:4px;
}
         }
</style>

</head>
<body>
    
         <div id="mySidepanel" class="sidepanel">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav();">×</a>
 <a href="adminregusers.aspx">View Registered Users</a>
  <a href="adminregsellers.aspx">View Sellerdetails</a>
  <a href="adminbooklist.aspx">View Book List</a>
 
</div>

    <div class="mainnav">
        <div  class="left"> <button class="openbtn" onclick="openNav();">&#9776;</button> </div>
        <div class="topnav right" id="myTopnav">
        <a href="#"></a>
            <a href="#"></a>
                 <a href="admincounter.aspx">View Hit Counter</a>
                 <a href="adminemail.aspx">Email Customers</a>
                 <a href="adminmessage.aspx">My messages</a>
                 <a href="admincredentials.aspx">Change Password</a>
                 <a href="logout.aspx">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fas fa-user"></i></a>
      
      </div>
    </div>

 <div class="admindata">
     <h4 style="text-decoration:underline;text-align:center;font-weight:900;">REGISTERED USERS</h4>
     <form runat="server">
     <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <div class="repeater">
                    <table>
                     <tr><td>User ID:</td><td>
                         <asp:Label ID="Label1" runat="server" Text='<%#Eval("userid") %>'></asp:Label></td></tr>
                     <tr><td>Name:</td><td>
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label></td></tr>
                     <tr><td>Password:</td><td>
                         <asp:Label ID="Label3" runat="server" Text='<%#Eval("password") %>'></asp:Label></td></tr>
                     <tr><td>Email:</td><td>
                         <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label></td></tr>
                     <tr><td>Username:</td><td>
                         <asp:Label ID="Label5" runat="server" Text='<%#Eval("username") %>'></asp:Label></td></tr>
                     <tr><td>
                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Remove</asp:LinkButton></td></tr>
                    </table>
             </div>

         </ItemTemplate>
     </asp:Repeater>
         </form>
 </div>   

<script>
function openNav() {
document.getElementById("mySidepanel").style.width = "250px";
}

function closeNav() {
document.getElementById("mySidepanel").style.width = "0";
  }

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