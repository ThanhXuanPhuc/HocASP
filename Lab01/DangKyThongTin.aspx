<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 173px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div>

        </div>
        <table align="center" cellpadding="6" cellspacing="0" class="w-100">
            <tr>
                <td colspan="2" class="text-center h3 alert alert-info">ĐĂNG KÝ THÔNG TIN&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Họ và tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ngày sinh:</td>
                <td>
                    <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giới tính:</td>
                <td>
                    <asp:RadioButton ID="rdNam" runat="server" Text="Nam" GroupName="GT" Checked="true" CssClass="form-check-inline" />
                    <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" CssClass="form-check-inline" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Trình độ:</td>
                <td>
                    
                    <asp:DropDownList ID="ddlTrinhDo" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Nghề nghiệp:</td>
                <td>
                    <asp:ListBox ID="lstNgheNghiep" runat="server"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hình:</td>
                <td>
                    <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Sở thích:</td>
                <td>
                    <asp:CheckBoxList ID="cklSoThich" runat="server" CssClass="form-check">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="btGui" runat="server" Text="Gửi" CssClass="btn btn-primary" OnClick="btGui_Click" />
                    <asp:Button ID="btNhapLai" runat="server" Text="Làm Lại" CssClass="btn btn-warning" OnClick="btNhapLai_Click"/>
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbThongTin" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
