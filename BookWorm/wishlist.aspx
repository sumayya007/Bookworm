<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="BookWorm.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
.uhomemain{
   
 
    height:100%;
    width:100%;
   background-color:#EEE8EE;
   
   
}

.uhomeview{
   background-color:#EEE8EE;
   
  width:100%;
    min-height:575px;
   height:100%;
   overflow:scroll;
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
   height:100%;
   overflow:scroll;
   overflow-x:hidden;
   display:block;
   float:right;
   margin-right:18px;
   padding-top:10px;
   background-color:#fff;
   margin-bottom:20px;
  
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
          background-color:#EEE8EE;
         
          
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
     .path{
        width:60%;
        float:left;
        
    }
    .user{
        width:40%;
             float:right;

    }
    .bar a{
        color:#111;
        font-weight:700;
        text-decoration:none;

       
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

/*responsive design for desktops and laptops*/
@media only screen and (min-width:1000px) {
 
    .uhomeview{
 
   overflow:hidden;

}
  .editsellerdata{
    width:60%;
   height:100%;
   display:block;
   margin:0 auto;
   background-color:#fff;
   /*padding-top:30px;*/
   float:right;
   margin-right:58px;
   padding-left:140px;
   margin-bottom:30px;
    /*position:absolute;
    right:60px;
    top:170px;*/
  
}
   
    .user{
       
        text-align:right;
        padding-right:40px;

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
    width:600px;
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
    .editsellerdata{
       
    width:60%;
    float:right;
    }
   
hr{
    display:none;
}
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="topnav" id="myTopnav">
        <a href="entry.aspx"><span style="font-weight:bold;">THE BOOK SHOP</span></a>
        <a href="userhome.aspx">View Books</a>
        <a href="sellbooks.aspx">Sell Books</a>
        <a href="usersalelist.aspx">My Sale List</a>
        <a href="editsellerdetails.aspx">My Account</a>
        <a href="logout.aspx">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
      
 
      
 
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
                <li><a href="editsellerdetails.aspx">Edit Seller details</a></li>
                 <li><a href="wishlist.aspx">Wishlist</a></li>
                 <li><a href="message.aspx">My messages</a></li>
                 <li><a href="userchangepassword.aspx">Change Password</a></li>
                 <li><a href="logout.aspx">Logout</a></li>

            </ul>
         </div>
      <div class="editsellerdata">
          
          <P class="heading">MY WISHLIST</p>
          
         <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>
            <div class="repeater">
            <table>
<tr>
            <td>Book Id:</td><td>
                <asp:Label ID="Label10" runat="server" Text='<%#Eval("bookid") %>'></asp:Label></td>
         <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("bookcover") %>' Height="250px" Width="160px"  /></td>
        </tr>
        <tr>
            <td>Book Title:</td><td>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("title") %>'></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("title") %>' Visible="false"></asp:TextBox>
                                </td>
        </tr>
        <tr>
            <td>Author:</td><td>
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("author") %>'></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("author") %>' Visible="false"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td>Price:</td><td>
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("price") %>' Visible="false"></asp:TextBox>
                           </td>
        </tr>
        <tr>
            <td>Category:</td><td>
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("category") %>'></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("category") %>' Visible="false"></asp:TextBox>
                              </td>
        </tr>
        <tr>
            <td>Condition:</td><td>
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("condition") %>'></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("condition") %>' Visible="false"></asp:TextBox>
                               </td>
        </tr>
        <tr>
            <td>Discount:</td><td>
                <asp:Label ID="Label6" runat="server" Text='<%#Eval("discount") %>'></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("discount") %>' Visible="false"></asp:TextBox>
                              </td>
        </tr>
        <tr>
            <td>Language:</td><td>
                <asp:Label ID="Label7" runat="server" Text='<%#Eval("language") %>'></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%#Eval("language") %>' Visible="false"></asp:TextBox>
                              </td>
        </tr>
        <tr>
            <td>Location:</td><td>
                <asp:Label ID="Label8" runat="server" Text='<%#Eval("location") %>'></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" Text='<%#Eval("location") %>' Visible="false"></asp:TextBox>
                              </td>
        </tr>
        <tr>
            <td>Age:</td><td>
                <asp:Label ID="Label9" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" Text='<%#Eval("age") %>' Visible="false"></asp:TextBox>
                         </td>
        </tr>
        <tr>
            <td>
               
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnDeleting">Remove</asp:LinkButton>
                
            </td>
        </tr>
        </table>
                </div>
        </ItemTemplate>
    </asp:Repeater>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="select * from bookdetails where bookid IN(select bookid from wishlist where wishid=@wishid)" DeleteCommand="DELETE FROM bookdetails WHERE (bookid = @bookid)" >
        <DeleteParameters>
            <asp:Parameter Name="bookid" />
        </DeleteParameters>
              </asp:SqlDataSource>
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





</asp:Content>
