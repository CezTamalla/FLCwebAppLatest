<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsPage.aspx.cs" Inherits="FLCwebApp.detailsPage" %>

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
    <link rel="stylesheet" href="css/style.css"/>
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
        h6 {
            float: right;
            margin-right: 30px;
            color: antiquewhite;
            margin-top: 20px;
        }
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
            <asp:ImageButton ID="user" ImageUrl="images/user.png" runat="server" width="50px" height="50px" />
            <asp:Label ID="clientlbl" runat="server" Text="Client"></asp:Label>
	  </nav>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" CssClass="image" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <h5><asp:Label ID="prodNamelbl" runat="server" Text=""></asp:Label> </h5>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="desclbl" runat="server" Text="Label"></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Label ID="minOrdlbl" CssClass="note" runat="server" Text="Label"></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                        :</td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="36px" Width="193px">
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
                        <asp:Button ID="add" class="btn btn-outline-primary" runat="server" Text="Add to Cart" />
                    </td>
                     <td>
                        <asp:Button ID="order" class="btn btn-primary" runat="server" Text="Order Now" OnClick="order_Click" Width="190px" />
                    </td>
                </tr>
            </table> 
    </form>

  
</body>
</html>
