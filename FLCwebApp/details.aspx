<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="FLCwebApp.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <title></title>
    <style>
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
            margin-top: 20px;
        }
        table {
            width: 400px;
            height: auto;
            margin-left: 33%;
            padding: 20px;
            margin-top: 150px;
           
        }
        td {
            height: auto;
            padding-bottom: 10px;
            text-align: center;
        }
        .image {
            width: 250px;
            height: 180px;
        }
       
        .note {
            color: blue;
            padding-bottom: 50px;
        }
        #add, #order {
            width: 180px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top"><h6>Hello Client</h6></div>
        <div class="container">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" CssClass="image" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <h5><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </h5>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="Label3" CssClass="note" runat="server" Text="Label"></asp:Label> 
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="add" class="btn btn-outline-primary" runat="server" Text="Add to Cart" />
                    </td>
                     <td>
                        <asp:Button ID="order" class="btn btn-primary" runat="server" Text="Order Now" />
                    </td>
                </tr>
            </table>
         
        </div>
    </form>
</body>
</html>
