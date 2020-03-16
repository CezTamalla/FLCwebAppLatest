<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FLCwebApp.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
<title>Admin_panel</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <style type="text/css">
        .logo {
            height: 200px;
            width: 200px;
            margin-left: 30px;
            padding-bottom:10px;
        }
        .side-panel {
            width: 280px;
            height: 100%;
            background-color: #000000;
            padding-top: 40px;
            padding-left: 5px;
            position: fixed; /* Fixed Sidebar (stay in place on scroll) */
            z-index: 1; /* Stay on top */
            top: 0; /* Stay at the top */
            left: 0;
            background-color: #111; /* Black */
            overflow-x: hidden; /* Disable horizontal scroll */
 
        }
        #menU {
            border: 1px solid #0163a9;
            font-family: 'Montserrat', sans-serif;
            text-transform: uppercase;
            float:right;
        }
        .content{
            float:left;
        }
        .sidetbl {
            width: 280px;
        }
        #Button1, #Button2, #Button3, #Button4, #Button5 {
            width: 265px;
            height: 60px;
            padding: 5px;
            margin-right: 5px;
            margin-bottom: 3px;
            /*background-color: #00a8e8;*/
        }
        .panel1 {
            width: auto;
            height: 100%;
            background-color: #00171f;
        }
        .greeting {
            float: right;
            padding-top: 10px;
            padding-right: 20px;
            font-weight: bold;
        }
     }
        .infoForm {
            float: right;
            height: 550px;
            width: auto;
            position: absolute;
            padding: 32px 28px 0px 28px;
            top: 80px;
            right: 20px;
            border: 1px solid #ddd;
        }
        .infoTable{
            font-family: 'Montserrat', sans-serif;
            border-collapse: collapse;
            
        }
        .infoTable th, .infoTable td{
              padding: 8px;

        }
        .infoTable tr:nth-child(even){background-color: #f2f2f2;}

        .infoTable tr:hover {background-color: #ddd;}

        .infoTable th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
        }

        #btnLogout {
            bottom: 42px;
            position: absolute;
            width: 262px;
            height: 57px;
        }

   
    * {
  box-sizing: border-box;
}

.column {

  width: 30%;
  padding: 15px;
  margin-top:5%;
 
}
.row{
    margin-left:25%;
}

/* Clearfix (clear floats) 
.row::after {
  content: "";
  clear: both;
  display: table;
}*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:Panel ID="Panel1" CssClass="panel1" runat="server" Height="50px" >      
                <asp:Label ID="userlbl" CssClass="greeting"  runat="server" ForeColor="White" style="text-align: right"></asp:Label>
            </asp:Panel>
        <div class="side-panel">
            <table class="sidetbl">
                <tr>
                    <td>
                        <img src="Images\logo.png" class="logo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" type="button" CssClass="btn btn-outline-primary" runat="server" Text="Status" OnClick="Button1_Click" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <div class="btn-group dropright">
                        <asp:Button ID="Button2" type="button" CssClass="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                runat="server" Text="Category"  />
                         <div class="dropdown-menu" id="menU">
                                 <a class="dropdown-item" href="#">Alcohol</a>
                                <div class="dropdown-divider" id=""></div>
                                <a class="dropdown-item" href="#">Sanitizer</a>    
                            </div>
                            </div>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button3" type="button" CssClass="btn btn-outline-primary" runat="server" Text="History" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button4" type="button" CssClass="btn btn-outline-primary" runat="server" Text="User Accounts" OnClick="Button4_Click" />
                    </td>
                </tr>
    
                 <tr>
                    <td>
                        <button type="button" id="btnLogout" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModalCenter"  >
                              Log Out</button>
                    </td>
                </tr>
            </table>
        </div>
           <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                           <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Log Out</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    Are you sure you want to log-off?
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Back</button>
                                    <a class="btn btn-danger" href="login.aspx" role="button">Log Out</a>
                                   
                                  </div>
                                </div>
                              </div>
                        </div>
 
<div class="row">
  <div class="column">
      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/new order.png" style="width:100%" />
  </div>
   
  <div class="column">
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/processing.png" style="width:100%" />
  </div>
  <div class="column">
      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/out.png"  style="width:100%" />
  </div>
</div>

       
        
    </form>
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="Scripts/Function.js"></script>
</body>
</html>
