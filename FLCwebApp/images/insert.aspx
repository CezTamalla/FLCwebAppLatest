<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="FLCwebApp.images.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <asp:TextBox ID="id_txt" runat="server" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_Load" Width="218px" />  
                        <asp:Image ID="Image1" runat="server" Height="420px" Width="420px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="insert" runat="server" Text="Insert" Width="260px" OnClick="insert_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
