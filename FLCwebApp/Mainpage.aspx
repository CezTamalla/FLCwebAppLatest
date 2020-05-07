<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="FLCwebApp.home_final" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="icon" href="images/logo.png" type="image/icon type" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
    <script src="js/jquery.min.js"></script>

   <link rel="stylesheet" href="css/icomoon.css"/>
   <style type="text/css">
        body {
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
        /*text color*/
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
        .footer-copyright {
            margin-top: -50px;
        }
        .ftco-footer {
            margin-top: -30px;
        }
        .dropleft{
             margin-left: 80px;
        }
        .drop-down {
            font-style: normal;  
        }
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        .dropleft:hover .dropdown-menu {
            display: block;
        }
        .row{
            margin-top: 80px;
        }
        .card{
            margin-left: 35px;
            margin-top: -25px;
        }
        .card:hover{
            -webkit-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            -moz-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
        }
        .headline{
            font-family: 'Monotype Corsiva';
            font-size: 50px;
            margin-top: 80px;
        
 }
       .subheadline {
           font-size: 18px;
       }
        .jumbotron {
            margin-bottom: 0;
            padding: 2rem 0 3.5rem;
            border-radius: 0;
            margin-top: 10px;
        }
        .narrow{
            width: 75%;
            margin: 1.5rem auto;
            /*padding-top: 2rem;*/
        }
        .headline1{
            font-family: 'Monotype Corsiva';
            font-size: 50px;
            margin-top: -20px;       
        }
        .heading-underline{
            width: 3rem;
            height: .2rem;
            background-color: #0047ab;
            margin: 0 auto 2rem;   
        }
        .feature svg.svg-inline--fa{
            color: #0047ab;
        }
        .feature h3{
            font-size: 1.3rem;
            text-transform: uppercase;
            padding-bottom: .4rem;
            margin-top: 15px;
        }
        .feature p{
            font-size: 1.1rem;
        }
        .icon-img:hover{
            -webkit-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            -moz-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
            box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
        }
        .col-12{
            margin-top: 10px;
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
	            <li class="nav-item active"><a href="Mainpage.aspx" class="nav-link">Home</a></li>
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
	            <li class="nav-item"><a href="Contact.aspx" class="nav-link">Contact us</a></li>    
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
     <!--Carousel-->
        <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/slide1_3.png" alt="First Slide"/>
                    <div class="carousel-caption d-none d-lg-block">
                        <h2>We deliver</h2> 
                        <p><a href="home.aspx" class="btn btn-primary">Shop Now</a></p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/slide2_3.png" alt="Second Slide"/>
                    <div class="carousel-caption d-none d-lg-block">
                        <h2> We accept made-to-order</h2>
                        <p><a href="home.aspx" class="btn btn-primary">Shop Now</a></p>
                    </div>
                </div>
                 <div class="carousel-item">
                    <img src="images/slide3_3.png" alt="Second Slide"/>
                    <div class="carousel-caption d-none d-lg-block">
                        <h2> We are responsive</h2>
                        <p><a href="home.aspx" class="btn btn-primary">Shop Now</a></p>
                    </div>
                </div>
            </div>
            <!-- Carousel controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <!--display of products-->
        <div id="products" class="offset">
           <div class="container">
              <div class="narrow text-center">
                <p class="headline"><b>Our Products</b></p>
                <div class="heading-underline"></div>
                <div class="subheadline">Every purchase of SM Bonus products requires a minimum order of 2000 pcs</div>
               </div>
                  <div class="row">
                    <div class="col-4-lg">
                        <div class="card" style="width:15rem;">
                            <img src="images/glassC600ml.png" alt="Card One" class="card-img-top" style="height:280px; width: 180px; margin-left: 25px;" />
                            <div class="card-body">
                                <h5 class="card-title">SM Bonus Glass Cleaner</h5>
                                <p class="card-text"> 
                                    "If you want to have a pleasant smell at home, 99.9% germs free, then I suggest you go for SM Bonus Glass Cleaner".
                                </p>
                                <a href="products-glassCleaner.aspx" class="btn btn-primary">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-4-lg">
                        <div class="card" style="width:15rem;">
                            <img src="images/tbcPine500ml.png" alt="Card One" class="card-img-top" style="height:280px; width: 180px; margin-left: 25px;"/>
                            <div class="card-body">
                                <h5 class="card-title">SM Bonus Toilet Bowl Cleaner</h5>
                                <p class="card-text">
                                    "This product can help you remove stains, dirt, and germs easily. As a bonus, it can leave the bathroom smelling fresh too!."
                                </p>
                                <a href="products-tbc.aspx" class="btn btn-primary">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-4-lg">
                        <div class="card" style="width:15rem;">
                            <img src="images/prod6.png" alt="Card One" class="card-img-top" style="height:280px; width: 220px; margin-left: 25px;" />
                            <div class="card-body">
                                <h5 class="card-title">SM Bonus Toilet Deodorant</h5>
                                <p class="card-text">
                                    "It gives a long lasting scent, so you can be assured that your toilet smells fresh and clean all throughout the day."
                                </p>
                                <a href="products-toiletDeo.aspx" class="btn btn-primary">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-4-lg">
                        <div class="card" style="width: 15rem;">
                            <img src="images/alcologneSho250.png" alt="Card One" class="card-img-top"  style="height: 280px; width: 180px; margin-left: 25px;"/>
                            <div class="card-body">
                                <h5 class="card-title">SM Bonus <br /> Alcologne</h5>
                                <p class="card-text">
                                    "SM Bonus Alcologne kills 99.9% of germs, It has different scent that makes your skin feel fresh and fragrant."
                                </p>
                                <a href="products-alcohol" class="btn btn-primary">View more</a>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div><!--end of products section-->
          <!--services-->
          <div class="jumbotron">
            <div class="narrow text-center">
                <div class="col-12">
                    <p class="headline1"><b>Our Services</b></p>
                    <div class="heading-underline"></div>
                </div>  
                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="feature">
                            <img src="images/delivery_truck.png" class="icon-img" style="height: 120px; width: 165px;"/>
                            <h3>We Deliver</h3>
                            <p>Expect your orders to be deliver within 7-14 days.</p>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="feature">
                            <img src="images/order.png" class="icon-img" style="height: 120px; width: 110px;"/>
                            <h3>We accept made-to-order</h3>
                            <p>Products are processed once your order has been received.</p>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="feature">
                            <img src="images/chatbot.jpg" class="icon-img" style="height: 120px; width: 140px;"/>
                            <h3>We are responsive</h3>
                            <p>Our chatbot can answer your questions 24/7.</p>
                        </div>
                     </div>     
                </div> <!--End of the Row -->
            </div> <!-- End NArrow -->
        </div> <!--End Jumbotron -->
        <!--footer-->
        <footer class="ftco-footer ftco-section">
            <div class="container">
                <div class="row mb-6">
                    <div class="col-md-6">
                        <div class="ftco-footer-widget mb-4">
                            <div class="col-12 narrow text-center">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3858.535090550034!2d121.04578901484196!3d14.738856889714523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b045ae86b6bb%3A0xc802b9a4d16a8a81!2s21%20Zabarte%20Ext%2C%20Novaliches%2C%20Quezon%20City%2C%201124%20Metro%20Manila!5e0!3m2!1sen!2sph!4v1585121569546!5m2!1sen!2sph" width="300" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="ftco-footer-widget mb-4">
            	            <h6 class="ftco-heading-4">Have a Questions?</h6>
            	            <div class="d-flex">
	                            <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                                    <li> <i class="icon icon-phone"></i> &nbsp; &nbsp;235-4534 / 09100637530<br /><br /></li>
	                                <li> <i class="icon icon-envelope"></i> &nbsp; &nbsp;<a href="#">fervarledesmawebsite@gmail.com</a><br /><br /></li>
	                                <li> <i class="icon icon-facebook"></i> &nbsp; &nbsp;<a href="#">Fervar Ledesma Corporation</a><br /><br /></li>
                                    <li> <i class="icon icon-map-marker"></i> &nbsp; &nbsp;21 Zabarte Ext, Novaliches, Quezon City, 1124 Metro Manila <br /><br/></li>
	                            </ul>
	                        </div>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="row">
                        <div class="col-md-12 text-center ">
                            <p> Copyright &copy;<script>document.write(new Date().getFullYear());</script> Fervar Ledesma Corporation</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script>
            $(document).ready(function () {
                $("#myCarousel").carousel();
            });

            $(document).ready(function () {

                $('.col-4-lg').hover(

                    function () {
                        $(this).animate({
                            marginTop: "-=1%",
                        }, 200);
                    },
                    function () {
                        $(this).animate({
                            marginTop: "0%"

                        }, 200);
                    }

                );
            });
        </script>
     </form>
        <script src="js/bootstrap-dropdownhover.min.js"></script>   
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </body>
</html>
