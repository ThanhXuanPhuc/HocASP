<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 75%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            color: #CC0000;
            text-align: center;
        }
        .auto-style4 {
            height: 27px;
            text-align: center;
            color: #FFFFFF;
            background-color: #0066FF;
        }
        .auto-style5 {
            height: 27px;
            width: 312px;
        }
        .auto-style6 {
            width: 312px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="4" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="3">Hồ sơ đăng ký</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">Thông tin đăng nhập</td>
                    <td class="auto-style4">Hò sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style5">Tên đăng nhập</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ControlToValidate="txtTenDN" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Tên đăng nhập không được rỗng">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTendn" runat="server" ControlToValidate="txtTenDN" CssClass="auto-style8" ErrorMessage="Tên đăng nhập không hợp lệ" ValidationExpression="[\d|\w|!|&amp;|_]{8}[\d|\w|!|&amp;|_]+">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td rowspan="12" style="vertical-align:top">
                        <asp:Label ID="lblHoSo" runat="server"></asp:Label>
                        <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="#FF3300" HeaderText="Danh sách lỗi" ShowMessageBox="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mật khẩu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMK" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rftMatkhau" runat="server" ControlToValidate="txtMK" CssClass="auto-style8" ErrorMessage="Mật khẩu không được rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Nhập lại mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtNhapLai" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNhaplai" runat="server" ControlToValidate="txtNhapLai" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Mật khẩu nhập lại không được rỗng">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNhapLai" runat="server" ControlToCompare="txtMK" ControlToValidate="txtNhapLai" CssClass="auto-style8" ErrorMessage="Mật khẩu nhập lại không đúng">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style5">Họ tên khách hàng</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Họ tên không được rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Ngày sinh</td>
                    <td>
                        <asp:DropDownList ID="ddlNgay" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlThang" runat="server">
                        </asp:DropDownList>
                        /<asp:DropDownList ID="ddlNam" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvNgay" runat="server" ControlToValidate="ddlNgay" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Chưa chọn ngày sinh">(*)</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvThang" runat="server" ControlToValidate="ddlThang" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Chưa chọn tháng sinh">(*)</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvNam" runat="server" ControlToValidate="ddlNam" CssClass="auto-style8" Display="Dynamic" ErrorMessage="Chưa chọn năm sinh">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style8" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Thu nhập</td>
                    <td>
                        <asp:TextBox ID="txtThuNhap" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvThuNhap" runat="server" ControlToValidate="txtThuNhap" ErrorMessage=" Thu nhập từ 1000000 đến 50000000" MaximumValue="50000000" MinimumValue="1000000" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Giới tính</td>
                    <td>
                        <asp:CheckBox ID="chkPhai" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Địa chỉ</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" OnClick="btDangKy_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
