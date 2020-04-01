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
     <script src="js/jquery.min.js"></script>
    <title>Cart</title>

     <script type="text/javascript">
         function selectallbox(headercheck) {
             var ischecked = headercheck.checked;
             Parent = document.getElementById('GridViewCart');
             var item = Parent.getElementsByTagName('input');
             for (i = 0; i < item.length; i++)
             {
                 if (item[i].id != headercheck && item[i].type == "checkbox")
                 {
                     if (item[i].checked != ischecked) {
                         item[i].click();
                     }
                 }
             }
         }

     </script>

    <style>
        .cart-list {
            width: auto;
            height: auto;
            margin-top: 200px;
            margin-left: 100px;
        }
        #GridViewCart {
            width: 800px;
            border-style: hidden;
            margin-top: 70px;
        }
        .hidden {
            display: none;
        }
        #nothingTodisplay {
            font-size: 30px;
            color: darkblue;
            font-weight: bolder;

        }
        .noItem {
            width: 200px;
            height:auto;
            margin-left: 37%;
            margin-top: 50px;
            text-align: center;
            position: absolute;
        }
        #HyperLinkShopNow {
            font-size: 20px;
        }
        .btn-group {
            position: element(#GridViewCart);
            right: 0;
            bottom: 0;
            width: 800px;
            margin-left: 100px;
        }
        .notif {
            width: 350px;
            height: auto;
            float: right;
            margin-top: 150px;
            margin-left: 970px;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
            overflow-x: hidden; /* Disable horizontal scroll */
            padding: 7px;
        }
        #GridViewMessage {
            width: 100%;
            height: auto;
            border-style: hidden;
        }
        #Label1 {
            font-weight: bolder;
            color: darkslategrey;
            padding-bottom: 10px;
            font-size: 18px;
        }
        #Label4 {
             font-weight: bolder;
            color: darkslategrey;
            padding-bottom: 10px;
            font-style: italic;
        }
        .navbar-brand {
    color: #000000;
}

.navbar-brand {
    font-weight: 800;
    font-size: 20px;
    text-transform: uppercase;
}

.navbar-brand {
    display: inline-block;
    padding-top: 0.3125rem;
    padding-bottom: 0.3125rem;
    margin-right: 1rem;
    font-size: 1.25rem;
    line-height: inherit;
    white-space: nowrap;
}

    .navbar-brand:hover, .navbar-brand:focus {
        text-decoration: none;
    }

.navbar-brand {
    color: rgba(0, 0, 0, 0.9);
}

.navbar-light .navbar-brand:hover, .navbar-light .navbar-brand:focus {
    color: rgba(0, 0, 0, 0.9);
}
/*navigation bar*/
.navbar-custom {
    background-color: #3c50a2;
}

ul li {
    margin-left: 20px;
    font-size: 15px;

}
/* change the brand and text color */
.navbar-custom .navbar-brand,
.navbar-custom .navbar-text {
    color: black;
}

/* change the link color */
.navbar-custom .navbar-nav .nav-link {
    color: #ffffff;
}

/* change the color of active or hovered links */
.navbar-custom .nav-link,
.navbar-custom .nav-item:hover .nav-link {
    color: #00171f;
}


.navbar-custom .dropdown-menu {
    background-color: #3c50a2;
}

.navbar-custom .dropdown-item {
    color: #ffffff;
}

    .navbar-custom .dropdown-item:hover,
    .navbar-custom .dropdown-item:focus {
        color: #191919;
        background-color: #191919);
    }

h6, h2, p {
    color: #003459;
}
/*buttons*/
.btn-primary {
    background-color: #00a8e8;
}


.navbar-nav > li {
    float: left;
    position: relative;
}
/*Underline*/
.navbar-custom .navbar-nav .nav-item.active a::after {
    border-bottom: 3px solid #00a8e8;
    bottom: 6px;
    content: "";
    left: 0;
    position: absolute;
    right: 0;
}

/*footer*/
.ftco-footer {
    margin-top: 100px;
}
.dropleft{
    margin-left: 80px;
}
        .btn-group {
            position: element(#GridViewCart);
            display: inline-flex;
            vertical-align: middle;
            right: 0;
            bottom: 0;
            width: 800px;
            margin-left: 100px;
        }
        .notif {
            width: 350px;
            height: auto;
            float: right;
            margin-top: 150px;
            margin-left: 970px;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
            overflow-x: hidden; /* Disable horizontal scroll */
            padding: 7px;
        }
        #GridViewMessage {
            width: 100%;
            height: auto;
            border-style: hidden;
        }
        #Label1 {
            font-weight: bolder;
            color: darkslategrey;
            padding-bottom: 10px;
            font-size: 18px;
        }
        #Label4 {
             font-weight: bolder;
            color: darkslategrey;
            padding-bottom: 10px;
            font-style: italic;
        }
        .orders-list {
            width: auto;
            height: auto;
            margin-top: 150px;
            margin-left: 100px;

        }
        #GridViewOrderStatus {
            width: 800px;
            border-style: hidden;

        }
        .hidden {
            display: none;
        }
        #nothingTodisplay {
            font-size: 30px;
            color: darkblue;
            font-weight: bolder;

        }
        .noItem {
            width: 200px;
            height:auto;
            margin-left: 37%;
            margin-top: 50px;
            text-align: center;
            position: absolute;
        }
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        .dropleft:hover .dropdown-menu {
            display: block;
        }
        #cartlbl {
            margin-top: 130px;
            font-size: 25px;
            color: darkslategrey;
            font-weight: bolder;
            margin-left: 32%;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
            overflow-x: hidden; /* Disable horizontal scroll */
            padding: 7px;
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
	          <li class="nav-item dropdown">                 
                  <a href="#" class="nav-link dropdown-toggle" type="button" id="dropdownMenuLink" data-toggle="dropdown"  data-hover="dropdown" aria-haspopup="true" aria-expanded="false">Products<span class="caret"></span></a>
                  <div class="dropdown-menu" aria-labelledby="products">
                      <asp:LinkButton ID="LBproductsAll" class="dropdown-item" runat="server" OnClick="LBproductsAll_Click">All Products</asp:LinkButton>
                      <asp:LinkButton ID="LBalcohol" class="dropdown-item" runat="server" OnClick="LBalcohol_Click">Alcohol</asp:LinkButton>
                      <asp:LinkButton ID="LBglassCleaner" class="dropdown-item" runat="server" OnClick="LBglassCleaner_Click">Glass Cleaner</asp:LinkButton>
                      <asp:LinkButton ID="LBlaundryBleach" class="dropdown-item" runat="server" OnClick="LBlaundryBleach_Click">Laundry Bleach</asp:LinkButton>
                      <asp:LinkButton ID="LBtbc" class="dropdown-item" runat="server" OnClick="LBtbc_Click">Toilet Bowl Cleaner</asp:LinkButton>
                      <asp:LinkButton ID="LBtoiletDeo" class="dropdown-item" runat="server" OnClick="LBtoiletDeo_Click">Toilet Deodorizer</asp:LinkButton>
                      <div class="dropdown-divider"></div>
                      <asp:LinkButton ID="LBfood" class="dropdown-item" runat="server" OnClick="LBfood_Click">Food</asp:LinkButton>
                  </div>
                
	          </li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact us</a></li>
            </ul>
    </div>
            <div class="dropleft">
                <asp:ImageButton ID="user" CssClass="dropdown-toggle" type="button" ImageUrl="images/user.png" runat="server" width="50px" height="50px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />
                <div class="dropdown-menu" aria-labelledby="user">
                    <asp:Label ID="clientlbl" class="dropdown-item" runat="server" Text=""></asp:Label>
                    <div class="dropdown-divider"></div>
                    <asp:HyperLink ID="HyperLinklogin" class="dropdown-item" runat="server" NavigateUrl="FLC_login.aspx" Visible="false">Login or Register</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkorderStatus" class="dropdown-item" runat="server" NavigateUrl="orderStatus.aspx" Visible="false">Order Status</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkcart" class="dropdown-item" runat="server" NavigateUrl="cart.aspx" Visible="false">Cart</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkorderHistory" class="dropdown-item" runat="server" NavigateUrl="orderHistory.aspx" Visible="false">History</asp:HyperLink>
                    <asp:LinkButton ID="logoutbtn" class="dropdown-item" runat="server" OnClick="LinkButton_Click" Visible="false">Logout</asp:LinkButton>

                </div>
            </div>
        </nav>
         <asp:Label ID="cartlbl" runat="server" Text="Cart List"></asp:Label>
         <div class="cart-list">
            <asp:GridView ID="GridViewCart" runat="server" DataKeyNames="Cart_ID" AutoGenerateColumns="False"  >
                <Columns>
                    <asp:TemplateField HeaderText="Select All">
                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Sellect All" onclick="javascript:selectallbox(this); "/>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />    
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Image">
                        <HeaderStyle CssClass="hidden" />
                        <ItemStyle CssClass="hidden" />
                        <ItemTemplate>
                            <asp:Image ID="prodImg" runat="server" ImageUrl="images\placeholder.png"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cart ID">
                        <HeaderStyle CssClass="" />
                        <ItemStyle CssClass="" />
                        <ItemTemplate>
                            <asp:Label ID="cartID" runat="server" Text='<%#Bind("Cart_ID","{0:00000}") %>'></asp:Label>
                        </ItemTemplate>
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
            </asp:GridView>
        </div>

        <div class="btn-group" role="group" aria-label="For Options">
            <asp:Button ID="ButtonRemove" class="opt btn btn-danger" runat="server" Text="Remove from Cart" OnClick="ButtonRemove_Click" />
            <asp:Button ID="ButtonEdit" class="opt btn btn-secondary" runat="server" Text="Edit Quantity" OnClick="ButtonEdit_Click" />
            <asp:Button ID="ButtonOrder" class="opt btn btn-primary" runat="server" Text="Order Now" OnClick="ButtonOrder_Click" />
        </div>
        
        <div class="noItem">
            <asp:Label ID="nothingTodisplay" runat="server" Text="" ></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLinkShopNow" runat="server" Visible="false" NavigateUrl="home.aspx">Shop Now >></asp:HyperLink>
        </div>
       
               <div class="notif">
                   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           <asp:Panel ID="notifPanel" runat="server" Visible="false">
                               <asp:Label ID="Label1" runat="server" Text="Notifications"></asp:Label><br />
                                <asp:Label ID="Label4" runat="server" Text="Latest:"></asp:Label><br />
                                <asp:Label ID="datelbl" runat="server" BackColor="Yellow" ForeColor="#333333"></asp:Label><br />
                               <asp:Label ID="msglbl" runat="server" BackColor="Yellow" ForeColor="#333333"></asp:Label><br /><br />

                               <asp:GridView ID="GridViewMessage" runat="server" AllowPaging="True" AutoGenerateColumns="False" >
                                   <Columns>
                                       <asp:TemplateField HeaderText="All Messages">
                                           <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                           <ItemStyle HorizontalAlign="Left" Height="100px" />
                                           <ItemTemplate>
                                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date_Sent") %>'></asp:Label><br />
                                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                               </asp:GridView>
                           </asp:Panel>
                           <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                       </ContentTemplate>
                   </asp:UpdatePanel>
               </div>
    </form>
</body>
</html>
