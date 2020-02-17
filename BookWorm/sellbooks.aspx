<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="sellbooks.aspx.cs" Inherits="BookWorm.WebForm2" %>
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
.sellbooksdata{
    width:100%;
   height:100%;
   display:block;
   margin:0 auto;
}
.bookbanner {
    display: none;
}
.heading{
   text-align:center;
   text-decoration:underline;
   font-size:22px;
   line-height:30px;
}
.booktable{
    width:70%;
    height:500px;
    display:block;
    margin:0 auto;
}
.booktable tr td{
    padding:20px;
}
hr{
    width:85%;
    border-bottom:1px solid #111;
    margin-left:25px;
 

}


@media only screen and (min-width:1000px) {
    .sellbooksdata{
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
<section class="uhomemain">
    
<div class="uhomeview">
    <div class="sellbooksdata">
        
        <p class="heading">BOOK DETAILS</p>
        <table class="booktable" >
           
             <tr>
                <td>Book Title:<asp:TextBox ID="title" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Author:<asp:TextBox ID="author" runat="server" CssClass="form-control"></asp:TextBox></td>
              </tr>
              <tr>
                  <td>Price:<asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox></td>
                  <td>Category:<asp:DropDownList ID="category" runat="server" CssClass="form-control" AutoPostBack="True">
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
                  <td>Condition:<asp:TextBox ID="condition" runat="server" CssClass="form-control"></asp:TextBox></td>
                  <td>Age:<asp:TextBox ID="age" runat="server" CssClass="form-control"></asp:TextBox></td>

              </tr>
              <tr>
                  <td>Language:<asp:DropDownList ID="language" runat="server" CssClass="form-control" AutoPostBack="True">
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
                  <td>BookCover:<asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /></td>

              </tr>
              <tr>
                  <td>Location:<asp:TextBox ID="location" runat="server" CssClass="form-control"></asp:TextBox></td>
                  <td>Discount:<asp:TextBox ID="discount" runat="server" CssClass="form-control"></asp:TextBox></td>
              </tr>
            </table>
            <asp:Panel ID="Panel1" runat="server" Visible="False">    
                <table>
            <tr>
                <td class="small">Name:</td><td class="big"><asp:TextBox ID="sellername" runat="server" CssClass="form-control"></asp:TextBox></td>

            </tr>
            <tr>
                <td class="small">Email:</td><td class="big"><asp:TextBox ID="selleremail" runat="server" CssClass="form-control"></asp:TextBox></td>

            </tr>
            <tr>
                <td class="small">Phone:</td><td class="big"><asp:TextBox ID="sellerphone" runat="server" CssClass="form-control"></asp:TextBox></td>

            </tr>
            <tr>
                <td class="small">Address:</td><td class="big"><asp:TextBox ID="selleraddress" runat="server" CssClass="form-control"></asp:TextBox></td>

            </tr>
             <tr>
                <td class="small">Location:</td><td class="big"><asp:TextBox ID="sellerlocation" runat="server" CssClass="form-control"></asp:TextBox></td>

            </tr>
          
               

           
        </table>
      
         </asp:Panel> 
                   <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" style="display:block;margin:0 auto;"/>


    </div>
     <div class="bookbanner">
             <p>Decluttrer<br /> your<br /> Bookshelves <br />without the <br />guilt</p>
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
