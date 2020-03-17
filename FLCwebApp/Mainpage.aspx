<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="FLCwebApp.home_final" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" href="css/style.css"/>
     <script src="js/jquery.min.js"></script>
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
	  </nav>

    <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
        <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
         <div class="carousel-inner">
        <div class="carousel-item active">
 
            <img src="images/slide2.png" alt="First Slide"/>
            <div class="carousel-caption d-none d-lg-block">
                <h2>We made to order</h2>
                <p><a href="#" class="btn btn-primary">Shop Now</a></p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/slide2_2.png" alt="Second Slide"/>
            <div class="carousel-caption d-none d-lg-block">
                <h2> We do deliver</h2>
            <p><a href="#" class="btn btn-primary">Shop Now</a></p>
            </div>
        </div>
        <!--<div class="carousel-item">
            <img src="images/slide1_1.png"  alt="Third Slide"/>
            <div class="carousel-caption d-none d-lg-block">
                <h2>First slide label</h2>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
        </div>-->
    </div>
    <!-- Carousel controls -->
    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>
        <script>
            $(document).ready(function () {
                $("#myCarousel").carousel();
            });
</script>
            <!--footer-->
<footer class="ftco-footer ftco-section">
   <div class="container">
        <div class="row mb-6">
          <div class="col-md-6">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-4">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-4">Have a Questions?</h2>
            	<div class="d-flex">
	              <ul>
	                <li><span class="text">21 Zabarte Ext, Novaliches, Quezon City, 1124 Metro Manila</span></li>
	                <li><a href="#"><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="text">fervarledesma@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p> Copyright &copy;<script>document.write(new Date().getFullYear());</script> Fervar Ledesma Corporation</p>
          </div>
        </div>
      </div>
    </footer>


        </form>
</body>
</html>
