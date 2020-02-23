<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="FLCwebApp.images.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> 
    <style>
        body {
            background-color: darkslategray;
        }
        #id_txt {
            height: 35px;
            width: 250px;

        }
        #insert {

        }
        table {
            width: 300px;
            height: auto;
            margin-left: 38%;
            margin-top:150px;
           
        }
        td {
             padding-bottom: 5px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td><b>ID:</b></td>
                    <td>
                        <asp:TextBox ID="id_txt" runat="server" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><b>Image:</b></td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="218px" />  
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="insert" class="btn btn-primary btn-lg btn-block" runat="server" Text="Insert Image" Width="260px" OnClick="insert_Click" />
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Visible="False" ForeColor="Yellow"></asp:Label>
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
