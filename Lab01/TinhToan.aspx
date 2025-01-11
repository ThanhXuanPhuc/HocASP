<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            background-color: #0099FF;
        }
        .auto-style3 {
            text-align: right;
        }
       
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
            text-align: center;
        }
        .auto-style6 {
            width: 26px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="4" class="auto-style2">Tính toán đơn giản </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số 1: </td>
                    <td>
                        <asp:TextBox ID="txtnum1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập số 2:</td>
                    <td>
                        <asp:TextBox ID="txtnum2" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btCong" runat="server" Text="Cộng" CssClass="btn btn-primary" OnClick="btCong_Click" />
                        <asp:Button ID="btTru" runat="server" Text="Trừ" CssClass="btn btn-secondary" OnClick="btTru_Click"/>
                        <asp:Button ID="btNhan" runat="server" Text="Nhân" CssClass="btn btn-danger " OnClick="btNhan_Click"/>
                        <asp:Button ID="btChia" runat="server" Text="Chia" CssClass="btn btn-info" OnClick="btChia_Click"/>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Kết quả</td>
                    <td>
                        <asp:TextBox ID="txtkq" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    </form>
</body>
</html>
