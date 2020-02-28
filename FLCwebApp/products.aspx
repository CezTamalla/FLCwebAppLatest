<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="FLCwebApp.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="product">
                        <asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("ID") %>'/>
                        <asp:Image ID="prod_img" runat="server" ImageUrl='<%# Eval("image") %>' />
                        <asp:Label ID="prodName" runat="server" Text='<%# Eval ("Name") %>'></asp:Label>
                        <asp:Label ID="prodDesc" runat="server" Text='<%# Eval ("Description") %>'></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "productDetails.aspx?ID="+Eval("ID")%>' >Add to Cart</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server">Buy Now</asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
