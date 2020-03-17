<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FLCwebApp.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" href="css/style.css"/>
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
            margin-left: 30px;
            margin-top: 100px;
        }
        .image {
            width: 238px;
            height: 170px;
        }
        .list {
           display: inline-block;
           text-align: justify;
           padding: 40px;
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
        h6 {
            float: right;
            margin-right: 30px;
            color: antiquewhite;
            margin-top: 13px;
        }
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
            <asp:Label ID="Label2" runat="server" Text="Client"></asp:Label>            
	  </nav>
        <div class="container">          
            <asp:ListView ID="ListView1" runat="server" >
                <ItemTemplate>
                    <div class="list">
                    <table>
                        <tr><td>
                         <asp:Image ID="prodImg" ImageUrl="images\placeholder.png" class="image" runat="server" /></td></tr>
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
               <div class="search">
                   <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label> 
                   <asp:DropDownList ID="DropDownList1" runat="server" Width="240px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem Value="all" Text="All Products"></asp:ListItem>
                       <asp:ListItem Value="alcohol" Text="Alcohol"></asp:ListItem>
                       <asp:ListItem Value="alcologne" Text="Alcologne"></asp:ListItem>
                       <asp:ListItem Value="glass" Text="Glass Cleaner"></asp:ListItem>
                       <asp:ListItem Value="deo" Text="Toilet Deodorizer"></asp:ListItem>
                       <asp:ListItem Value="tbc" Text="TBC"></asp:ListItem>
                       <asp:ListItem>Food</asp:ListItem>
                   </asp:DropDownList>
               </div>
    </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
