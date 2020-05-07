<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FLCwebApp.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="icon" href="images/logo.png" type="image/icon type" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  

    <link rel="stylesheet" href="css/icomoon.css"/>
    <script src="js/jquery.min.js"></script>
    <style type="text/css">
        body {
            background-color:#dcdcdc;
        }
        /*logo*/
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
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        .dropleft:hover .dropdown-menu {
            display: block;
        }
        /*contact form*/
        .container{
            margin-top:10%;
            width: 1300px;
        }
        .contact-parent{
            display:flex;
            margin: 40px 0;
        }
        .contact-child{
            display:flex;
            flex:1;
        }
        .child1{
            background-size:cover;
            flex-direction:column;
            justify-content: space-around;
            color:#fff;
            padding:100px 0;
            margin-top:50px;
            margin-left:80px;
        }
        .child1 p{
            padding-left:10%;
            font-size:16px;  
        }
        .child1 p span{
            font-size:13px;
            color: #000;
        }
        .child2{
            flex-direction:column;
            justify-content:space-around;
            background-color:#fff;
            height:730px;
            margin-left: 60px;
        }
        .inside-contact {
            width: 430px;
            margin: 0 auto;
        }
        h3 {
            margin-bottom: 40px;
        }
        .inside-contact h3 {
            text-transform: uppercase;
            text-align: left;
            margin-top: 50px;
        }
        .inside-contact h4{
            text-align:center;
            font-size: 16px;
            color:#00a5e2;
        }
        .inside-contact input, .inside-contact textarea{
            width:100%;
            background-color:#eee;
            border:1px solid rgba(0,0,0,0.48);
            padding:5px 5px;
            margin-bottom:20px;
        }
        .inside-contact input[type=submit] {
          
            background-color: #00a8e8;
            color: #fff;
            transition: 0.2s;
            border: 1px solid #00a8e8;
            margin: 30px 0;
            margin-top: 10px;
        }
        .inside-contact input[type=submit]:hover {
            background-color: #007ea7;
            color: #000;
            transition: 0.2s;
        }
    </style>
</head>
<body> 
    <form id="form1" runat="server">
        <!--NavBar-->
        <nav class="navbar navbar-expand-sm navbar-custom fixed-top">
	      <a class="navbar-brand"><img src="images/logo.png" alt="Logo" style="width:80px;"/>&nbsp; &nbsp<font color="white"> Fervar Ledesma Corporation</font></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCustom">
            <i class="fa fa-bars fa-lg py-1 text-white"></i>
          </button>
          <div class="navbar-collapse collapse" id="navbarCustom">
            <ul class="navbar-nav ml-auto" >
	            <li class="nav-item"><a href="Mainpage.aspx" class="nav-link">Home</a></li>
	            <li class="nav-item"><a href="About.aspx" class="nav-link">About us</a></li>
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
	            <li class="nav-item active"><a href="Contact.aspx" class="nav-link">Contact us</a></li>    
            </ul>         
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
        </div>
	 </nav>
     <!--Contact Form-->
     <div class="container">
        <div class="contact-parent">
            <div class="contact-child child2">
                <div class="inside-contact">
                    <h3>Contact Us</h3>
                    <h4>
                       <asp:Label ID="confirm" runat="server" Text=""></asp:Label>
                    </h4>
                    <p>Name</p>
                    <asp:TextBox ID="txt_name" runat="server" Required="required" placeholder="Enter Your Name"></asp:TextBox>
                    <p>Email</p>
                    <asp:TextBox ID="txt_email" runat="server" Required="required" placeholder="Enter Your Email"></asp:TextBox>
                    <p>Company Name</p>
                    <asp:TextBox ID="txt_comname" runat="server" Required="required" placeholder="Enter Your Company Name"></asp:TextBox>                  
                    <p>Subject</p>
                    <asp:TextBox ID="txt_subject" runat="server" Required="required" ></asp:TextBox>
                    <p>Message</p>
                    <asp:TextBox ID="txt_msg" runat="server" Required="required" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="btn_send" runat="server" Text="SEND"  OnClick="btn_send_Click"/>
                </div>      
             </div>
             <div class="contact-child child1">
                <p>
                    <i class="icon icon-phone"></i> &nbsp; &nbsp;235-4534 / 09100637530<br />
                </p>
                <p>
                    <i class="icon icon-envelope"></i> &nbsp; &nbsp;FervarLedesma@Yahoo.com<br />
                </p>
                <p>
                   <i class="icon icon-facebook"></i> &nbsp; &nbsp;Fervar Ledesma Corporation<br />
                </p>
                <p>
                   <i class="icon icon-map-marker"></i> &nbsp; &nbsp;21 Zabarte Ext, Novaliches, Quezon City, 1124 Metro Manila   <br/>
                </p>
                <div class="col-12 narrow text-center">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3858.535090550034!2d121.04578901484196!3d14.738856889714523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b045ae86b6bb%3A0xc802b9a4d16a8a81!2s21%20Zabarte%20Ext%2C%20Novaliches%2C%20Quezon%20City%2C%201124%20Metro%20Manila!5e0!3m2!1sen!2sph!4v1585121569546!5m2!1sen!2sph" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
             </div>
          </div>
        </div>
     </form>
     <script src="js/bootstrap-dropdownhover.min.js"></script> 
  </body>
</html>