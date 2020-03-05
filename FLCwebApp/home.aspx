<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FLCwebApp.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title></title>
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
            margin-left: 307px;
            margin-top: 65px;
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
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top"><h6>Hello Client</h6></div>
        <div class="side-panel">
            <table class="sidetbl">
                <tr>
                    <td>
                        <img src="images\logo.png" class="logo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" class="btn btn-outline-primary" runat="server" Text="Products Category" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button2" class="btn btn-outline-primary" runat="server" Text="Order Status" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" class="btn btn-outline-primary" runat="server" Text="History" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" class="btn btn-outline-primary" runat="server" Text="User Account" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button5" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModalCenter" runat="server" Text="Logout" />
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
                                    <a class="btn btn-danger" href="FLC_login.aspx" role="button">Log Out</a>
                                   
                                  </div>
                                </div>
                              </div>
                        </div>
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
    </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
