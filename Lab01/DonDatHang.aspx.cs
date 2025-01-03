using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
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
            ddlLoaiBanh.Items.Add(new ListItem("Bánh Croissant bơ", "01"));
            ddlLoaiBanh.Items.Add(new ListItem("Bánh bò nướng", "02"));
            ddlLoaiBanh.Items.Add(new ListItem("Patés chauds", "03"));
            ddlLoaiBanh.Items.Add(new ListItem("Hamburger", "04"));
        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            try
            {
                string loaibanh = ddlLoaiBanh.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuong.Text);
                lstBanhDaDat.Items.Add(string.Format("{0} ({1})", loaibanh, soluong));
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = lstBanhDaDat.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanhDaDat.Items[i].Selected)
                {
                    lstBanhDaDat.Items.RemoveAt(i);
                }
            }
        }

        protected void btInDonHang_Click(object sender, EventArgs e)
        {
            string kq = "<div style='color: red;'>";
            kq += "<div class='h3 text-center mt-3 '>HOÁ ĐƠN MẶT HÀNG</div>";
            kq += "<div class='border p-2 '>";
            //thu thập thông tin hoá đơn gửi từ client
            kq += $"<b>Khách hàng</b>: <i>{txtKhachHang.Text}</i> <br>";
            kq += $"<b>Địa chỉ:</b>: <i>{txtDiaChi.Text}</i> <br>";
            kq += $"<b>Mã số thuế:</b>: <i>{txtMaSoThue.Text}</i> <br>";
            kq += "<b>Đặt các loại bánh sau:</b> <br>";

            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lstBanhDaDat.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });
                
                kq += $"<tr><td style='color: red;'>{arr[0]}</td><td style='color: red;'>{arr[1]}</td></tr>";

            }

            kq += "</table>";
            kq += "</div>";
            //Gửi thông tin hoá đơn về client
            lblHoaDon.Text = kq;
        }
    }
}