using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            //khoi tao ddlNgay
            ddlNgay.Items.Add(new ListItem("--chọn ngày--", ""));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            //khoi tao ddlThang
            ddlThang.Items.Add(new ListItem("--chọn tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));              
            }
            //khoi tao ddlNam
            ddlNam.Items.Add(new ListItem("--chọn năm--", ""));
            for (int i = 1950; i <= 2015; i++)
            {
                ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += string.Format("<li> Họ tên: <b> {0} </b>", txtHoTen.Text);
            kq += string.Format("<li> Tên đăng nhập: <b> {0} </b>", txtTenDN.Text);
            kq += string.Format("<li> Mật khẩu: <b> {0} </b>", txtMK.Text);
            kq += string.Format("<li> Ngày sinh: <b> {0}/{1}/{2} </b></li>",
                     ddlNgay.SelectedItem.Text,
                     ddlThang.SelectedItem.Text,
                     ddlNam.SelectedItem.Text);
            kq += string.Format("<li> Giới tính: <b> {0} </b>", chkPhai.Checked ? "Nam" : "Nữ");
            kq += string.Format("<li> Email: <b> {0} </b>", txtEmail.Text);
            kq += string.Format("<li> Địa chỉ: <b> {0} </b>", txtDiaChi.Text);
            kq += string.Format("<li> Điện thoại: <b> {0} </b>", txtDienThoai.Text);

            lblHoSo.Text = kq;
        }
    }
}