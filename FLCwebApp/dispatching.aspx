<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dispatching.aspx.cs" Inherits="FLCwebApp.dispatching" %>

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
    <title>Clients Orders</title>

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
        <div>
             <asp:Label ID="cartlbl" runat="server" Text="Orders List"></asp:Label>
         <div class="cart-list">
            <asp:GridView ID="GridViewOrders" runat="server" DataKeyNames="order_id" AutoGenerateColumns="False" AllowPaging="True"  >
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
                            <asp:Label ID="cartID" runat="server" Text='<%#Bind("order_id","{0:00000}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Order Date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Label ID="date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Label ID="prodName" runat="server" Text='<%#Eval("product_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:Label ID="qty" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Client">
                        <HeaderStyle CssClass="" />
                        <ItemStyle CssClass="" />
                        <ItemTemplate>
                            <asp:Label ID="orderby" runat="server" Text='<%#Eval("ordered_by") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                        <HeaderStyle CssClass="" />
                        <ItemStyle CssClass="" />
                        <ItemTemplate>
                            <asp:Label ID="status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#9999FF" />
            </asp:GridView>
        </div>

        <div class="btn-group" role="group" aria-label="For Options">
            <asp:Button ID="ButtonAccept" class="opt btn btn-danger" runat="server" Text="Accept Order" OnClick="ButtonAccept_Click" />
            <asp:Button ID="ButtonDeliver" class="opt btn btn-secondary" runat="server" Text="Ready for Delivery" OnClick="ButtonDeliver_Click" />
            <asp:Button ID="ButtonComplete" class="opt btn btn-primary" runat="server" Text="Order Completed" OnClick="ButtonComplete_Click" />
        </div>
        </div>
    </form>
</body>
</html>
