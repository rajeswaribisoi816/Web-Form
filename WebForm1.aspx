<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>connect sql database to asp.net</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:275px;height:200px;border:1px solid #000;padding:15px 20px 250px 30px;margin-left:auto;margin-right:auto;transform:translateY(+25%)">
        <table>
            <tr>
            <td>FirstName</td>
            <td>
                <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>LastName</td>
            <td>
                <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
            </td>
            </tr>

            <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </td>
            </tr>

            <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" Text="view" OnClick="Button4_Click" />
            </td>
            </tr>

            <tr>
            <td>Enter id for update</td>
            <td>
                <asp:TextBox ID="oldId" runat="server"></asp:TextBox>
            </td>
            </tr>
        </table>        
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
