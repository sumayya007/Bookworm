<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admincounter.aspx.cs" Inherits="BookWorm.admincounter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
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
         .uhomemain{
   
 
    height:100%;
    width:100%;
  
   
   
}

.uhomeview{
   
    background-color:rgb(213, 243, 203);
  width:100%;
    min-height:575px;
   height:100%;
 padding-top:70px;
  

}
 .bookbanner{
    display:block;
    width:30%;
    height:400px;
    float:left;
    background-color:#fff;
    margin-left:15px;
    margin-right:5px;
    padding:5px;
  
}

.heading{
   text-align:center;
   text-decoration:underline;
   font-size:14px;
   line-height:25px;
   font-weight:700;
}
hr{
    width:85%;
    border-bottom:1px solid #111;
    margin-left:25px;
 

}
.editsellerdata{
    width:55%;
   height:400px;
   display:block;
   float:right;
   margin-right:18px;
   padding-top:10px;
   background-color:#fff;
   
  
}
.griddata{
    width:70%;
    height:500px;
   
    margin:0 auto;
}
.griddata table tr{
    width:100%;
}
.sellertable{
   
    height:400px;
     width:fit-content;
    display:block;
    margin:0 auto;
    font-size:14px;
   
}
.sellertable tr{
    margin-bottom:13px;
}
.sellertable tr td{
    padding:4px;
}
        .bar {
            background-color: rgb(213, 243, 203);
        }
        #subbar{
          width:92%;
        height:50px;
        font-weight:700;
        display:block;
        margin:0 auto;
       padding-top:15px;
       padding-left:30px;
       background-color: white;
      position:relative;
      top:30px;
    }
    
  
    .bar a{
        color:#111;
        font-weight:700;
        text-decoration:none;

       
    }
    .path{
        width:60%;
        float:left;
        
    }
    .user{
        width:40%;
             float:right;

    }
    .bookbanner p{
    display:block;
    font-weight:700;
    width:100%;
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    font-style:italic;
    font-size:14px;
   
   color:#111;
   
    text-align:left;
   
    margin-top:5px;
}
.bookbanner ul{
    width:fit-content;
    display:block;
    margin:0 auto;
}
.bookbanner ul li {
    list-style:none;
    margin-top:10px;
    
}
.bookbanner ul li a {
   font-size:14px;
 
   color:#111;
   text-decoration:none;
}

.counter{
    width:150px;
    height:200px;
    display:block;
   
    margin:0 auto;
    text-align:center;
     margin-top:50px;
    border:2px solid #111;
}
.counter p{
    width:100%;
    height:60px;
    padding-top:20px;
    background-color:aquamarine;
}

.left{
    float:left;
}
.right{
    float:right;
}
         @media only screen and (min-width:1000px) {
             .uhomeview{
   
 
   background-color:rgb(213, 243, 203);
   
   
}
    .user{
       
        text-align:right;
        padding-right:40px;

    }
  .editsellerdata{
    width:60%;
   height:400px;
   display:block;
   margin:0 auto;
   background-color:#fff;
   /*padding-top:30px;*/
   float:right;
   margin-right:58px;
    /*position:absolute;
    right:60px;
    top:170px;*/
  
}
  .bookbanner{
    display:block;
    width:25%;
    height:400px;
    float:left;
    background-color:#fff;
    position:absolute;
    left:35px;
    top:170px;
  
}
 
.bookbanner p{
    
    font-size:18px;
   line-height:24px;
   
    text-align:left;
    margin-left:60px;
    margin-top:20px;
}

.bookbanner ul li {
  
    padding:10px;
}
.bookbanner ul li a {
   font-size:18px;
   line-height:24px;
  
}
.sellertable{
    width:100%;;
    display:block;
    margin:0 auto;
   
    padding-left:80px;
   
}

.small{
    width:25%;
}
.big{
    width:75%;
}

.sellertable tr td{
   padding-top:8px;
    padding-bottom:30px;
    padding-left:20px;
    padding-right:20px;
}
  .heading{
  
   font-size:22px;
   line-height:40px;
   
}
    .editsellerdata{
       
    width:60%;
    float:right;
    }
   
hr{
    display:none;
}
.counter{
    width:500px;
    height:150px;
    
     margin-top:110px;
   
}
.counter p{
   
    height:50px;
 
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

  <div class="bar"><div id="subbar">
         <span class="path">Home / <a href="myaccount.aspx">My Account</a></span>
         <span class="user">
             Hello <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>!</span>
             </div>
     </div>
<section class="uhomemain">
   
    
<div class="uhomeview">
    <div class="bookbanner">
            <p>My Account</p>
            <ul>
                <li><a href="admincounter.aspx">View Hit Counter</a></li>
                 <li><a href="adminemail.aspx">Email Customers</a></li>
                 <li><a href="adminmessage.aspx">My messages</a></li>
                 <li><a href="admincredentials.aspx">Change Password</a></li>
                 <li><a href="logout.aspx">Logout</a></li>
            </ul>
         </div>
      <div class="editsellerdata">
          <form runat="server">
              <div class="counter">
          <P class="heading">HIT COUNTER</p>
              <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="XX-Large" ></asp:Label>
                  </div>
         </form>
      </div>

       
    </div>
    </section>
 

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
