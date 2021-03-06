﻿ <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FLCwebApp.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title></title>
     <style>
        body {
            
        }
        .logo {
            width: 120px;
            height: 120px;
            margin-left: 45%;
            margin-top: 30px;

           
        }
        .login {
            width: 700px;
            height: auto;
            font-family: 'Lato', Calibri, Arial, sans-serif;
            margin-left: 32%;
            padding-top: 45px;
            padding-left: 35px;
            margin-top: 20px;
        }
        label {
            color: darkslategrey;
            font-weight: bolder;

        }
        #usertxt, #passtxt, #storetxt, #adresstxt, #contactPersontxt, #contactNotxt, #usertxt, #passtxt, #confirmPasstxt  {
            width: 300px;
            height: 40px;
            border-radius: 5px;
            padding-left: 8px;
        }
        #registerbtn {
            width: 300px;
            height: 40px;
            border-radius: 5px;
            float: right;
           
        }
         .validator {
             font-size: 15px;
         }
         .auto-style4 {
             text-align: right;
             width: 220px;
         }
         .auto-style5 {
             text-align: right;
             width: 429px;
         }
         .auto-style8 {
             width: 517px;
         }
         .auto-style9 {
             text-align: left;
             width: 517px;
             height: 33px;
         }
         .auto-style13 {
             text-align: right;
             width: 220px;
             height: 33px;
         }
         .auto-style14 {
             text-align: right;
             width: 429px;
             height: 33px;
         }
         .auto-style18 {
             text-align: right;
             width: 220px;
             height: 50px;
         }
         .auto-style19 {
             text-align: right;
             width: 429px;
             height: 50px;
         }
         .auto-style20 {
             width: 517px;
             height: 50px;
         }
         .auto-style21 {
             text-align: right;
             width: 220px;
             height: 41px;
         }
         .auto-style22 {
             text-align: right;
             width: 429px;
             height: 41px;
         }
         .auto-style23 {
             width: 517px;
             height: 41px;
         }
    </style>
</head>
<body>
    <form id="form2" runat="server">
         <img src="images\logo.png" class="logo" />
        <div>
            <table class="login"> 
                <tr>
                     <td class="auto-style13">
                        <label for="storetxt">Store Name and Branch: </label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="storetxt" runat="server" placeholder=""></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validator" runat="server" ControlToValidate="storetxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>                  
                    </td>
                </tr>
                 <tr>
                     <td class="auto-style21">
                        <label for="adresstxt">Adress: </label>
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="adresstxt" runat="server" placeholder="" ></asp:TextBox>
                    </td>
                     <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validator" runat="server" ControlToValidate="adresstxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                      <td class="auto-style4">
                       <label for="contactPersontxt">Contact Person: </label>
                    </td>
                    <td class="auto-style5">
                       <asp:TextBox ID="contactPersontxt" runat="server" placeholder=""></asp:TextBox>
                    </td>
                     <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validator" runat="server" ControlToValidate="contactPersontxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                     <td class="auto-style4">
                       <label for="contactNotxt">Contact Number: </label>
                    </td>
                    <td class="auto-style5">
                       <asp:TextBox ID="contactNotxt" runat="server" placeholder="" ></asp:TextBox>
                    </td>
                     <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validator" runat="server" ControlToValidate="contactNotxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                      <td class="auto-style4">
                       <label for="usertxt">Username: </label>
                    </td>
                    <td class="auto-style5">
                       <asp:TextBox ID="usertxt" runat="server" placeholder="" ></asp:TextBox>
                    </td>
                     <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validator" runat="server" ControlToValidate="usertxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                      <td class="auto-style4">
                       <label for="passtxt">Password: </label>
                    </td>
                    <td class="auto-style5">
                       <asp:TextBox ID="passtxt" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                    </td>
                     <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validator" runat="server" ControlToValidate="passtxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                     <td class="auto-style18">
                       <label for="confirmPasstxt">Confirm Password: </label>
                    </td>
                <td class="auto-style19">
                       <asp:TextBox ID="confirmPasstxt" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="validator" runat="server" ControlToValidate="confirmPasstxt" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                       <asp:CompareValidator ID="CompareValidator1" CssClass="validator" runat="server" ControlToCompare="passtxt" ControlToValidate="confirmPasstxt" ErrorMessage="* Password does not match" ForeColor="Red"></asp:CompareValidator>
                     </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-right">
                        <asp:Button ID="registerbtn" class="btn btn-primary" runat="server" Text="Register and Login" OnClick="registerbtn_Click"  />
                    </td>
                </tr>              
            </table>
        </div>

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
        <div class="row">
          <div class="col-md-12 text-center">

            <p> Copyright &copy;<script>document.write(new Date().getFullYear());</script> Fervar Ledesma Corporation</p>
          </div>
        </div>
     </div>
    </footer>
    </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>
