<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="BookWorm.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>The Book Shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/entrystyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="repeater">
                    <table>
                        <tr><td colspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductImage") %>' />
                            </td></tr>

                     <tr><td>Product ID:</td><td><%#Eval("ProductID") %></td></tr>
                     <tr><td>Product Name:</td><td><%#Eval("ProductName") %></td></tr>
                     <tr><td>Price:</td><td><%#Eval("Price") %></td></tr>
                     <tr><td>Discount:</td><td><%#Eval("Discount") %></td></tr>
                     <tr><td>
                         <asp:Button ID="Button1" runat="server" Text="AddtoCart" /></td>
                         <td>
                             <asp:Button ID="Button2" runat="server" Text="AddtoWishlist" /></td>
                     </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString %>" SelectCommand="SELECT DISTINCT [ProductID], [ProductName], [Price], [Discount], [ProductImage] FROM [ProductDetail]"></asp:SqlDataSource>
    </form>
</body>
</html>
