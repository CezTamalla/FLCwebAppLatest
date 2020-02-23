<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FLC_login.aspx.cs" Inherits="FLCwebApp.FLC_login" %>

<!DOCTYPE html>

<
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title>FLC Login</title>
    <style>
        body {
            background-color: #00171F;
        }
        .logo {
            width: 160px;
            height: 160px;
            margin-left: 43%;
            margin-top: 100px;
           
        }
        .login {
            width: 350px;
            height: 200px;
            font-family: 'Lato', Calibri, Arial, sans-serif;
            margin-left: 38%;
            padding-top: 45px;
            padding-left: 35px;
            margin-top: 10px;
        }
        #usertxt, #passtxt {
            width: 300px;
            height: 50px;
            border-radius: 5px;
            padding-left: 8px;
        }
        #loginbtn {
            width: 300px;
            height: 40px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <img src="images\logo.png" class="logo" />
        <div>
            <table class="login">
                <tr>
                    <td>
                        <asp:TextBox ID="usertxt" runat="server" placeholder="Enter Username"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:TextBox ID="passtxt" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="loginbtn" class="btn btn-primary" runat="server" Text="Login" OnClick="loginbtn_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
