<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {}
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            width: 378px;
        }
        .btThem {
            display: block;            
            margin: 5px auto;        
            padding: 5px 10px;       
            font-size: 16px;           
            color: black;              
            border: none;             
            cursor: pointer;          
            border-radius: 5px;        
            transition: all 0.3s ease; 
            border: 2px solid #007BFF;
        }

        </style>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <table align="center" cellpadding="4" cellspacing="4" class="auto-style1" style="border: 2px solid #28a745; border-collapse: collapse;">
        <tr>
            <td colspan="2" style="text-align: center; background-color: #d4edda; color: #155724; font-weight: bold;" class="auto-style3" >ĐƠN ĐẶT HÀNG&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" rowspan="3">Khách hàng:<br />
                <br />
                Địa chỉ:<br />
                <br />
                Mã số thuế:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtKhachHang" runat="server" Width="262px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtMaSoThue" runat="server" Width="257px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"  style="border: 2px solid #28a745; border-collapse: collapse;">
                <span style="color: #155724; font-weight: bold;">Chọn các loại bánh sau:</span><br />
                <asp:DropDownList ID="ddlLoaiBanh" runat="server" CssClass="form-select">
                </asp:DropDownList>
                    <br/>
                Số lượng:
                <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                &nbsp;cái<br />
                <asp:Button ID="btThem" runat="server" Text="&gt;" CssClass="btThem" OnClick="btThem_Click" />
</td>

            <td style="border: 2px solid #28a745; border-collapse: collapse;">
                <span style="color: #155724; font-weight: bold;">Danh sách bánh được đặt:</span><br />
                <asp:ListBox ID="lstBanhDaDat" runat="server" SelectionMode="Multiple" Width="197px" Height="79px"></asp:ListBox>
                <asp:ImageButton ID="btXoa" runat="server" ImageAlign="Bottom"  ImageUrl="~/Images\Images\delete.gif" OnClick="btXoa_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center" >
                <asp:Button ID="btInDonHang" runat="server" Text="In đơn đặt hàng" style=" background-color: #d4edda; color: #155724; font-weight: bold;" OnClick="btInDonHang_Click"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2" >
                <asp:Label ID="lblHoaDon" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
