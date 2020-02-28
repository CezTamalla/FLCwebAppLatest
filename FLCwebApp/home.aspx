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
        #Button1, #Button2, #Button3, #Button5 {
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
        .des {
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
        h6 {
            float: right;
            margin-right: 30px;
            color: antiquewhite;
            margin-top: 13px;
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
                        <asp:Button ID="Button5" class="btn btn-warning" runat="server" Text="Logout" OnClick="Button5_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="container">          
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <div class="list">
                    <table>
                        <tr><td><img src="images\placeholder.png" class="image" /></td></tr>
                        <tr><td><h5><%#Eval("Name") %></h5></td></tr>
                        <tr><td class="des"><p><%#Eval("Description") %></p></td></tr>
                        <tr><td>
                            <asp:Button ID="Button4" class="btn btn-primary btn-lg btn-block" runat="server" Text="Order Now" /></td></tr>   
                        <tr><td>
                            <asp:Button ID="Button6" class="btn btn-primary btn-lg btn-block" runat="server" Text="Add to Cart" /></td></tr>    
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
