<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FLCwebApp.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title></title>
    <style>
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
        .sidetbl {
            width: 280px;
        }
        #Button1, #Button2, #Button3, #Button5 {
            width: 265px;
            height: 60px;
            padding: 5px;
            margin-right: 5px;
            margin-bottom: 3px;
        }
        .container {
            width: 700px;
            height: auto;
            float: right;
            position: absolute;
            margin-left: 320px;
        }
        .image {
            width: 100px;
            height: 170px;
        }
        .list {
           display: inline-block;
           text-align: justify;
           padding: 30px;
        }
        .des {
            width: 250px;
        }
        #Button4 {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="side-panel">
            <table class="sidetbl">
                <tr>
                    <td>
                        <img src="images\logo.png" class="logo" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Button" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Button" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button5" class="btn btn-warning" runat="server" Text="Logout" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="container">          
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <div class="list">
                    <table>
                        <tr><td><img src="<%#Eval("image") %>" class="image" /></td></tr>
                        <tr><td><h5><%#Eval("prod_name") %></h5></td></tr>
                        <tr><td class="des"><p><%#Eval("description") %></p></td></tr>
                        <tr><td>
                            <asp:Button ID="Button4" class="btn btn-primary btn-lg btn-block" runat="server" Text="Order Now" /></td></tr>          
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
