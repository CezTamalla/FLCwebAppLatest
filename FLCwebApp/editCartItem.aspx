<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editCartItem.aspx.cs" Inherits="FLCwebApp.editCartItem" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title>Details</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
        <script src="js/jquery.min.js"></script>
    <style>
        .top {
            height: 50px;
            width: 100%;
            background-color: #00171f;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
        }
        /*h6 {
            float: right;
            margin-right: 30px;
            color: antiquewhite;
            margin-top: 20px;
        }*/
        table {
            width: 400px;
            height: auto;
            margin-left: 33%;
            padding: 20px;
            margin-top: 150px;
           
        }
        td {
            height: auto;
            padding-bottom: 10px;
            text-align: center;
        }
        .image {
            width: 250px;
            height: 180px;
        }
       
        .note {
            color: blue;
            padding-bottom: 50px;
        }
        #add, #order {
            width: 180px;
            
        }
        .auto-style1 {
            margin-left: 0;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 149px;
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
.hidden {
    display: none;
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
        .hidden {
            display: none;
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
	          <li class="nav-item active"><a href="home.aspx" class="nav-link">Products</a></li>
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
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" CssClass="image" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="cartIDlbl" runat="server" CssClass="hidden" Text=""></asp:Label>
                        <h5><asp:Label ID="prodNamelbl" runat="server" Text=""></asp:Label> </h5>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="desclbl" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="minOrdlbl" CssClass="note" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                        :</td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="36px" Width="193px">
                             <asp:ListItem Text="Select Quantity"></asp:ListItem>
                             <asp:ListItem Text="2000"></asp:ListItem>
                             <asp:ListItem Text="3000"></asp:ListItem>
                             <asp:ListItem Text="4000"></asp:ListItem>
                             <asp:ListItem Text="5000"></asp:ListItem>
                             <asp:ListItem Text="10000"></asp:ListItem>
                         </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:Button ID="add" class="btn btn-outline-primary" runat="server" Text="Cancel" OnClick="cancel_Click" />
                    </td>
                     <td>
                        <asp:Button ID="order" class="btn btn-primary" runat="server" Text="Save" OnClick="save_Click" Width="190px" />
                    </td>
                </tr>
            </table> 

    </form>  
</body>
</html>

