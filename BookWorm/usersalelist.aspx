<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="usersalelist.aspx.cs" Inherits="BookWorm.WebForm3" %>
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
    margin-bottom:30px;
   
   
}

.uhomeview{
   
    background-color:#fff;
  width:100%;
    min-height:670px;
   height:100%;
   margin-top:30px;
  

}
.bookbanner {
    display: none;
}
.booklist{
    width:100%;
   height:100%;
   display:block;
   margin:0 auto;
}
.heading{
   text-align:center;
   text-decoration:underline;
   font-size:22px;
   line-height:30px;
}
.repeater {
   
    font: 14px segoe ui;
    border-collapse: collapse;
    display:block;
    margin:0 auto;
    width:fit-content;
    margin-bottom:30px;
    margin-top:30px;
 
}

.repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:4px;
    padding-bottom:4px;
}
@media only screen and (min-width:1000px) {
     .repeater {
   
 
    display:inline-block;
    margin:0 auto;
    width:fit-content;
    margin-bottom:30px;
    margin-top:30px;
    margin-left:40px;
 
}
    .repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:4px;
    padding-bottom:4px;
}
    .booklist{
        margin-left:28px;
    width:70%;
    float:left;
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
<section class="uhomemain">
    
<div class="uhomeview">
<div class="booklist">
    <p class="heading">MY BOOKS FOR SALE</p>
    <asp:Repeater ID="Repeater1" runat="server">

        <ItemTemplate>
            <div class="repeater">
            <table>
<tr>
            <td>Book Id:</td><td>
                <asp:Label ID="Label10" runat="server" Text='<%#Eval("bookid") %>'></asp:Label></td>
         <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("bookcover") %>' Height="250px" Width="200px"  /></td>
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnEditing">Edit</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="OnDeleting">Delete</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server"  OnClick="OnCancelling" Visible="False">Cancel</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server"  OnClick="OnUpdating" Visible="False">Update</asp:LinkButton>
            </td>
        </tr>
        </table>
                </div>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT * FROM [bookdetails]" DeleteCommand="DELETE FROM bookdetails WHERE (bookid = @bookid)" UpdateCommand="UPDATE bookdetails SET title = @title, author = @author, price = @price, category = @category, condition = @condition, discount = @discount, language = @language, location = @location, age = @age">
        <DeleteParameters>
            <asp:Parameter Name="bookid" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" />
            <asp:Parameter Name="author" />
            <asp:Parameter Name="price" />
            <asp:Parameter Name="category" />
            <asp:Parameter Name="condition" />
            <asp:Parameter Name="discount" />
            <asp:Parameter Name="language" />
            <asp:Parameter Name="location" />
            <asp:Parameter Name="age" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</div>
<div class="bookbanner">
<p>Decluttrer <br />your<br /> Bookshelves <br />without the <br />guilt</p>
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
