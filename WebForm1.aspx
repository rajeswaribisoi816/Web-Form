<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ValidationAsp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name:<asp:TextBox ID="tbName" runat="server" ValidationGroup="r" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="name is compulsory" ForeColor="Red" ControlToValidate="tbName" Display="Dynamic">*</asp:RequiredFieldValidator>
            <br />
            age:<asp:TextBox ID="tbAge" runat="server" ValidationGroup="r"></asp:TextBox>
            <asp:RangeValidator ID="rngAge" runat="server" ControlToValidate="tbAge" Display="Dynamic" ErrorMessage="age should be between 18 nad 60" ForeColor="#CC0000" MaximumValue="60" MinimumValue="10" Type="Integer">*</asp:RangeValidator>
            <br />
            exp:<asp:TextBox ID="tbexp" runat="server" ValidationGroup="r"></asp:TextBox>
            <asp:CompareValidator ID="cmpAge_Exp" runat="server" ControlToCompare="tbexp" ControlToValidate="tbAge" ErrorMessage="exp should be less than age" ForeColor="#CC0000" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
            <br />
            regexp:<asp:TextBox ID="tbRegexp" runat="server" ValidationGroup="r"></asp:TextBox>
            <asp:RegularExpressionValidator ID="reg" runat="server" ControlToValidate="tbRegexp" Display="Dynamic" ErrorMessage="invalid email id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="submit" />
            <asp:ValidationSummary ID="vs" runat="server" ForeColor="#CC0000" />
        </div>
    </form>
</body>
</html>
