<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="FLCwebApp.productDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <style>
        .prodList {
            display: inline-block;
           text-align: justify;
           padding: 30px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="prodList">     
            <asp:Repeater ID="Repeater1" runat="server">
                
                <ItemTemplate>
                    <div>
                        <table>
                    <tr><td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'/></td></tr>
                    <tr><td><asp:Label ID="prodName2" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td></tr>
                    <tr><td><asp:Label ID="prodDesc2" runat="server" Text='<%# Eval("Description") %>'></asp:Label></td></tr>
                   <tr>
                   
                   <td><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>3000</asp:ListItem>
                        <asp:ListItem>4000</asp:ListItem>
                        <asp:ListItem>5000</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                 </tr>
                            <tr>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Add to Cart" /></td>
                </tr>
                        </table>
                    </div>
                </ItemTemplate>
                   
            </asp:Repeater>
     
        </div>
    </form>
</body>
</html>
