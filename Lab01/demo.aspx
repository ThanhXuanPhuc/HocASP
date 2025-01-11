<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Lab01.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nhập họ tên
            <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
            <asp:Button ID="btGui" runat="server" Text="Gửi" OnClick="btGui_Click" />
            <br />
            <br />
            <asp:Label ID="lbChao" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
