<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="FLCwebApp.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" href="css/styles.css"/>
     <script src="js/jquery.min.js"></script>
    <title>Cart</title>

    <style>
        .cart-list {
            width: auto;
            height: auto;
            margin-top: 200px;
            margin-left: 200px;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-sm navbar-custom fixed-top">
	      <a class="navbar-brand"><img src="images/logo.png" alt="Logo" style="width:80px;"/>&nbsp; &nbsp<font color="white"> Fervar Ledesma Corporation</font></a>
	   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCustom">
        <i class="fa fa-bars fa-lg py-1 text-white"></i>
    </button>
    <div class="navbar-collapse collapse" id="navbarCustom">
            <ul class="navbar-nav ml-auto" >
	          <li class="nav-item"><a href="Mainpage.aspx" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.aspx" class="nav-link">About us</a></li>
	          <li class="nav-item"><a href="home.aspx" class="nav-link">Products</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact us</a></li>

            </ul>
    </div>
            <div class="dropleft">
                <asp:ImageButton ID="user" CssClass="dropdown-toggle" type="button" ImageUrl="images/user.png" runat="server" width="50px" height="50px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />
                <div class="dropdown-menu" aria-labelledby="user">
                    <asp:Label ID="clientlbl" class="dropdown-item" runat="server" Text=""></asp:Label>  
                    <asp:HyperLink ID="HyperLinklogin" class="dropdown-item" runat="server" NavigateUrl="FLC_login.aspx" Visible="false">Login or Register</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkorderStatus" class="dropdown-item" runat="server" NavigateUrl="orderStatus.aspx" Visible="false">Order Status</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkcart" class="dropdown-item" runat="server" NavigateUrl="cart.aspx" Visible="false">Cart</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkorderHistory" class="dropdown-item" runat="server" NavigateUrl="orderHistory.aspx" Visible="false">History</asp:HyperLink>
                    <asp:LinkButton ID="logoutbtn" class="dropdown-item" runat="server" OnClick="LinkButton_Click" Visible="false">Logout</asp:LinkButton>

                </div>
            </div>
        </nav>

        <div class="cart-list">
            <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField HeaderText="Select All">
                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Select All" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Label ID="prodName" runat="server" Text='<%#Eval("prodName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Label ID="qty" runat="server" Text='<%#Eval("Qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Client ID">
                        <HeaderStyle CssClass="hidden" />
                        <ItemStyle CssClass="hidden" />
                        <ItemTemplate>
                            <asp:Label ID="clientID" runat="server" Text='<%#Eval("Client_Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />

            </asp:GridView>

        </div>
    </form>
</body>
</html>
