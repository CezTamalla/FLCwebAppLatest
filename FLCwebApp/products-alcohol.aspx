<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products-alcohol.aspx.cs" Inherits="FLCwebApp.products_alcohol" %>

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
    <title>Products</title>
    <style>
        body {
            background-color: #fffff;
        }
        .logo {
            height: 200px;
            width: 200px;
            margin-left: 30px;
            padding-bottom:10px;
        }
        .side-panel {
            width: 280px;
            height: 100%;
            background-color: #00171f;
            padding-top: 40px;
            padding-left: 5px;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
            overflow-x: hidden; /* Disable horizontal scroll */
 
        }
        .sidetbl {
            width: 280px;
        }
        #Button1, #Button2, #Button3, #Button5, #Button7 {
            width: 265px;
            height: 60px;
            padding: 5px;
            margin-right: 5px;
            margin-bottom: 3px;
        }
        .container {
            width: auto;
            height: auto;
            float: right;
            position: absolute;
            margin-left: 10px;
            margin-top: 100px;
        }
        .image {
            width: 238px;
            height: 170px;
        }
        .list {
           display: inline-block;
           text-align: justify;
           padding: 33px;
        }
        #des {
            width: 250px;
        }
        #Button4 {
            width: 300px;
        }
        .top {
            height: 50px;
            width: 100%;
            background-color: #00171f;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
        }
        
        #Button5 {
            bottom: 90px;
            position: absolute;
            width: 262px;
            height: 57px;
        }
        /*h6 {
            float: right;
            margin-right: 30px;
            color: antiquewhite;
            margin-top: 13px;
        }*/
        #prodName {
            font-size: 40px;
            font-weight: bold;
        }
        .hidden {
            display: none;
        }
        .search {
            width: 200px;
            height: auto;
            float: right;
            margin-top: 150px;
            margin-left: 1040px;
            position: fixed;
            padding: 7px;
        }
        #Label1 {
            font-weight: bolder;
            color: darkslategrey;
            padding-bottom: 10px;
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
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        .dropleft:hover .dropdown-menu {
            display: block;
        }

/*footer*/
.ftco-footer {
    margin-top: 100px;
}
.dropleft{
    margin-left: 80px;
}
     .drop-down {
         font-style: normal;
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
                <asp:ImageButton ID="user" CssClass="dropdown-toggle" type="button" ImageUrl="images/user.png" runat="server" width="50px" height="50px" data-toggle="dropdown" data-hover="dropdown" aria-haspopup="true" aria-expanded="false" />
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
               
        <div class="container">          
            <asp:ListView ID="ListView1" runat="server" >
                <ItemTemplate>
                    <div class="list">
                    <table>
                        <tr><td>
                         <asp:Image ID="prodImg" class="image" runat="server" ImageUrl="images/placeholder.png" /></td></tr>
                        <tr><td><asp:Label ID="prodID" CssClass="hidden" runat="server" Text='<%#Eval("ID") %>'></asp:Label></td></tr> 
                        <tr><td><b><asp:Label ID="prodName" runat="server" Text='<%#Eval("Name") %>'></asp:Label></b></td></tr>
                        <tr><td><asp:Label ID="des" runat="server" Text='<%#Eval("Description") %>'></asp:Label></td></tr> 
                        <tr><td><asp:Label ID="minOrd" CssClass="hidden" runat="server" Text='<%#Eval("Min_Order") %>'></asp:Label></td></tr>
                        <tr><td>
                            <asp:Button ID="details" class="btn btn-primary btn-lg btn-block" runat="server" Text="View Details" OnClick="viewDetails" /></td></tr>    
                    </table>
                    </div>
                </ItemTemplate>
            </asp:ListView>        
       </div>

                <div class="notif">
                   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           <asp:Panel ID="notifPanel" runat="server" Visible="false">
                               <asp:Label ID="recipientlbl" CssClass="hidden" runat="server" Text="Label"></asp:Label>
                               <asp:Label ID="Label1" runat="server" Text="Notifications"></asp:Label><br />
                                <asp:Label ID="Label4" runat="server" Text="Latest:"></asp:Label><br />
                                <asp:Label ID="datelbl" runat="server" BackColor="Yellow" ForeColor="#333333"></asp:Label><br />
                               <asp:Label ID="msglbl" runat="server" BackColor="Yellow" ForeColor="#333333"></asp:Label><br /><br />

                               <asp:GridView ID="GridViewMessage" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridViewMessage_PageIndexChanging" PageSize="3" >
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

     <script src="js/bootstrap-dropdownhover.min.js"></script>   
</body>
</html>

