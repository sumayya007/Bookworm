<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="BookWorm.message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Book Shop</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/entrystyle.css" rel="stylesheet" />
     <link href="./css/messsages.css" rel="stylesheet"/>
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
uhomemain{
   
 
    height:100%;
    width:100%;
    margin-bottom:30px;
   
   
}
.uhomeview{
   
    background-color:#fff;
  width:100%;
    min-height:670px;
   height:100%;
   margin-top:80px;
  

}
.box{
    background-color:#fff;
    box-decoration-break shadow:0 0 40px 1px grey;
    width:600px;
    display:block;
    margin:0 auto;
}
/*
.chattable{
    min-width:900px;
width:100%;
display:block;
margin:0 auto;
border:1px solid #808080;

*/
.left{
    width:30%;
    height:auto;
    min-height:900px;
    overflow:scroll;
    float:left;
}
.right{
     width:70%;
    height:auto;
    min-height:900px;
    overflow:scroll;
    float:right;
}
.msgbox{
    width:100%;
}
.button{
    height:100%;
    width:60px;
    font-size:25px;
    background:#F5F5F5;
    color:#999;
}
.button:hover{
    background:#f2f2f2;
    color:#7c7c7c

}
.textarea:focus{
    outline:0!important;
    border-color:#719ECE;

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
        </style>
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>    
<div class="topnav" id="myTopnav">
<a href="entry.aspx"><span style="font-weight:bold;">THE BOOK SHOP</span></a>
<a href="userhome.aspx">View Books</a>
<a href="sellbooks.aspx">Sell Books</a>
<a href="usersalelist.aspx">My Sale List</a>
<a href="editsellerdetails.aspx">My Account</a>
<a href="logout.aspx">Logout</a>
<a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
   
</div> 
<section class="uhomemain">
<div class="uhomeview">

  <div class="box">
        <div class="left">
        <span>Welcome <asp:Label ID="Label1" runat="server" style="color:red;"></asp:Label> ,</span>
             
        <h6>CHAT LIST</h6>
        <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1"  ForeColor="Black"  runat="server" Text='<%# Bind("recievername") %>' OnClick="LinkButton1_Click" CommandArgument='<%# Bind("recievername") %>'>LinkButton</asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
        </div>
        <div class="right">
            <asp:Label ID="Label2" runat="server" ></asp:Label>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                           
                                             <asp:DataList ID="DataList2" runat="server">
                                                 <ItemTemplate>  
                                                     <div class="lv-item media"> 
                                                         <div class="lv-avatar pull-left"> 
                                                             <%--<img src="./images/bhai.jpg" alt="">--%>
                                                             

                                                         </div>
                                                         <div class="media-body"> 
                                                             <div class="ms-item"> 
                                                                 <span class="glyphicon glyphicon-triangle-left" style="color:#000000;"></span> 
                                                                 <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                                                             </div>
                                                             <small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; <asp:Label ID="Date" runat="server" Text='<%# Bind("Time") %>'></asp:Label></small> 
                                                         </div>
                                                     </div>
                                                   </ItemTemplate>
                                              </asp:DataList>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
          <div class="msgbox">
                   <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter your message..." TextMode="MultiLine" CssClass="form-control" class="textarea"></asp:TextBox>
                  <button runat="server" class="button" onserverclick="Unnamed_ServerClick"> <span class="glyphicon glyphicon-send"></span></button>
              </div>
        </div>      
                
       </div>

  </div>
</section>       
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
</form>
</body>
</html>
