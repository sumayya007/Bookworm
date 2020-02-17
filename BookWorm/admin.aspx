<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="BookWorm.admin" %>

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
