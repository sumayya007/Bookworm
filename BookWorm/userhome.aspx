<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="BookWorm.WebForm1" %>
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
    .repeater {
     display:inline-block;
     margin-left:40px;
 
}
    .repeater tr td{
    padding-left:10px;
    padding-right:10px;
    padding-top:4px;
    padding-bottom:4px;
}
    .uhomedata{
    margin-left:28px;
    width:70%;
    float:left;
    
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
<div class="welcome">
    Welcome  <asp:Label ID="Label1" runat="server" Text="Label" style="color:red;font-size:24px;padding-left:10px;padding-right:10px;"></asp:Label>,
</div>
 <section class="uhomemain">
    
     <div class="uhomeview">
      <div class="uhomedropdown">
          <table >
              <tr>
                  
                  <td >Select by Category:</td><td><asp:DropDownList ID="DropDownList1" runat="server" class="drop" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
              <asp:ListItem>Classics/Literature</asp:ListItem>
              <asp:ListItem>Science fiction/Fantasy</asp:ListItem>
              <asp:ListItem>Romance</asp:ListItem>
              <asp:ListItem>Religious/Inspirational</asp:ListItem>
              <asp:ListItem>Crime/Mystery</asp:ListItem>
              <asp:ListItem>Horror</asp:ListItem>
              <asp:ListItem>School level Textbooks</asp:ListItem>
              <asp:ListItem>College level-Engineering</asp:ListItem>
              <asp:ListItem>College Level-Medical</asp:ListItem>
              <asp:ListItem>College level-Others</asp:ListItem>
          </asp:DropDownList></td>
               </tr>
              <tr>
                  <td>Select by Language:</td><td><asp:DropDownList ID="DropDownList3" runat="server" class="drop" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
              <asp:ListItem>English</asp:ListItem>
              <asp:ListItem>Hindi</asp:ListItem>
              <asp:ListItem>Malayalam</asp:ListItem>
              <asp:ListItem>Arabic</asp:ListItem>
              <asp:ListItem>Tamil</asp:ListItem>
              <asp:ListItem>Bengali</asp:ListItem>
              <asp:ListItem>Telugu</asp:ListItem>
              <asp:ListItem>Urdu</asp:ListItem>
              <asp:ListItem>Kannada</asp:ListItem>
              <asp:ListItem>Marathi</asp:ListItem>
              <asp:ListItem>Gujarathi</asp:ListItem>
              <asp:ListItem>Punjabi</asp:ListItem>
              <asp:ListItem>Odia</asp:ListItem>
              <asp:ListItem>Others</asp:ListItem>
                   </asp:DropDownList></td>
              </tr>
              <tr>
                   <td>Sort by Price:</td>
                   <td> <asp:DropDownList ID="DropDownList2" runat="server" class="drop" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
              <asp:ListItem>Low to High</asp:ListItem>
              <asp:ListItem>High to Low</asp:ListItem>
              </asp:DropDownList></td>
              </tr>
          </table>
   
      
      </div>
      <div class="uhomedata">
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <div class="repeater">
                    <table>
                        <tr><td colspan="2" id="imgbox">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("bookcover") %>' Height="250px" Width="200px" style="display:block;margin:0 auto;"/>
                            </td></tr>

                     <tr><td>Book ID:</td><td><%#Eval("bookid") %></td></tr>
                     <tr><td>Title:</td><td><%#Eval("title") %></td></tr>
                     <tr><td>Author:</td><td><%#Eval("author") %></td></tr>
                     <tr><td>Price:</td><td><%#Eval("price") %></td></tr>
                     <tr><td>Category:</td><td><%#Eval("category") %></td></tr>
                     <tr><td>Condition:</td><td><%#Eval("condition") %></td></tr>
                     <tr><td>Seller id:</td><td><%#Eval("sellerid") %></td></tr>

                     <tr><td>
                         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-sm btn-primary" CommandArgument='<%#Eval("sellerid")%>' OnClick="LinkButton1_Click">Message</asp:LinkButton>
                        </td>
                         <td>
                             <asp:Button ID="Button2" runat="server" Text="AddtoWishlist" CssClass="btn btn-sm btn-danger" OnClick="Button2_Click" CommandArgument='<%#Eval("bookid")%>' CommandName='<%#Eval("title")%>' /></td>
                     </tr>
                      
                    </table>
                </div>
              </ItemTemplate>
          </asp:Repeater>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookdetails]">
          </asp:SqlDataSource>

          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookdetails] WHERE ([category] = @category)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="category" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookdetails] WHERE ([language] = @language)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList3" Name="language" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          
          <br />
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookdetails] ORDER BY [price]"></asp:SqlDataSource>
          <br />
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [bookdetails] ORDER BY [price] DESC"></asp:SqlDataSource>
          
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
