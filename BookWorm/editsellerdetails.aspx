<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="BookWorm.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/font-awesome.css" rel="stylesheet" /> 
    <style>
.topnav {
  overflow: hidden;
  background-color: #333;
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
.mainnav{
    background-color:#111;
    height:55px;
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
   font-size:22px;
   line-height:30px;
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
    width:fit-content;
    height:300px;
    display:block;
    margin:0 auto;
   
}
.sellertable tr td{
    padding:8px;
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
    padding-left:2px;
    padding-right:2px;
    padding-top:4px;
    padding-bottom:4px;
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
   
    text-align:cente;;
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
    padding-bottom:8px;
    padding-left:20px;
    padding-right:20px;
}
  
     .repeater {
   
 
    display:block;
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
                 <li><a href="chat.aspx">My messages</a></li>
                 <li><a href="userchangepassword.aspx">Change Password</a></li>
                 <li><a href="logout.aspx">Logout</a></li>

            </ul>
         </div>
      <div class="editsellerdata">
          <%--<asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" Height="100px" Width="50%" class="griddata" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowCancelingEdit="GridView1_RowCancelEdit" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Left" >
              <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Seller id">
                    <EditItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("sellerid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("sellerid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("sellername") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("sellername") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("selleremail") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("selleremail") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("sellerphone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("sellerphone") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("selleraddress") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("selleraddress") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("sellerlocation") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("sellerlocation") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operation">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
            
        </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString %>" DeleteCommand="DELETE FROM [sellerdetails] WHERE [sellerid] = @sellerid" InsertCommand="INSERT INTO [sellerdetails] ([sellerid], [sellername], [selleremail], [sellerphone], [selleraddress], [sellerlocation]) VALUES (@sellerid, @sellername, @selleremail, @sellerphone, @selleraddress, @sellerlocation)" SelectCommand="SELECT * FROM [sellerdetails]" UpdateCommand="UPDATE [sellerdetails] SET [sellername] = @sellername, [selleremail] = @selleremail, [sellerphone] = @sellerphone, [selleraddress] = @selleraddress, [sellerlocation] = @sellerlocation WHERE [sellerid] = @sellerid">
              <DeleteParameters>
                  <asp:Parameter Name="sellerid" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="sellerid" Type="Int32" />
                  <asp:Parameter Name="sellername" Type="String" />
                  <asp:Parameter Name="selleremail" Type="String" />
                  <asp:Parameter Name="sellerphone" Type="Int32" />
                  <asp:Parameter Name="selleraddress" Type="String" />
                  <asp:Parameter Name="sellerlocation" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="sellername" Type="String" />
                  <asp:Parameter Name="selleremail" Type="String" />
                  <asp:Parameter Name="sellerphone" Type="Int32" />
                  <asp:Parameter Name="selleraddress" Type="String" />
                  <asp:Parameter Name="sellerlocation" Type="String" />
                  <asp:Parameter Name="sellerid" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>--%>
          <P class="heading">SELLER DETAILS</p>
          <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" ForeColor="Red" Font-Size="X-Large"></asp:Label>
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <div class="repeater">
                      <table>
                          <tr>
                              <td>Seller ID:</td>
                              <td>
                                  <asp:Label ID="Label1" runat="server" Text='<%#Eval("sellerid") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td>Seller name:</td>
                              <td>
                                  <asp:Label ID="Label2" runat="server" Text='<%#Eval("sellername") %>'></asp:Label></td>
                              <td><asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("sellername") %>' Visible="false"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>Seller email:</td>
                              <td>
                                  <asp:Label ID="Label3" runat="server" Text='<%#Eval("selleremail") %>'></asp:Label></td>
                              <td><asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("selleremail") %>' Visible="false"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>Seller phone:</td>
                              <td>
                                  <asp:Label ID="Label4" runat="server" Text='<%#Eval("sellerphone") %>'></asp:Label></td>
                              <td><asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("sellerphone") %>' Visible="false"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>Seller address:</td>
                              <td>
                                  <asp:Label ID="Label5" runat="server" Text='<%#Eval("selleraddress") %>'></asp:Label></td>
                              <td><asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("selleraddress") %>' Visible="false"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>Seller location:</td>
                              <td>
                                  <asp:Label ID="Label6" runat="server" Text='<%#Eval("sellerlocation") %>'></asp:Label></td>
                              <td><asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("sellerlocation") %>' Visible="false"></asp:TextBox></td>
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
        <asp:Panel ID="Panel1" runat="server" >
       
        </asp:Panel>
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
