using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) //nạp lần đầu
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            //khoi tao du lieu cho ddlTrinhDo
            ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "01"));
            ddlTrinhDo.Items.Add(new ListItem("Cao đẳng", "02"));
            ddlTrinhDo.Items.Add(new ListItem("Đại học", "03"));
            ddlTrinhDo.Items.Add(new ListItem("Sau đại học", "04"));

            //khoi tao du lieu cho lstNgheNghiep
            lstNgheNghiep.Items.Add(new ListItem("Công nhân", "01"));
            lstNgheNghiep.Items.Add(new ListItem("Lập trình viên", "02"));
            lstNgheNghiep.Items.Add(new ListItem("Giáo viên", "03"));
            lstNgheNghiep.Items.Add(new ListItem("Bác sĩ", "04"));
            lstNgheNghiep.Items.Add(new ListItem("Kỹ sư", "05"));
            lstNgheNghiep.Items.Add(new ListItem("Khác", "06"));

            //khoi tao du lieu cho cklSoThich
            cklSoThich.Items.Add(new ListItem("Mua sắm", "01"));
            cklSoThich.Items.Add(new ListItem("Xem phim", "02"));
            cklSoThich.Items.Add(new ListItem("Du lịch", "03"));
            cklSoThich.Items.Add(new ListItem("Ăn uống", "04"));
            cklSoThich.Items.Add(new ListItem("Tắm biển", "05"));
        }

        protected void btGui_Click(object sender, EventArgs e)
        {

            //b1. lấy thông tin gửi từ client
            string kq = "<div class='h3 alert alert - info'>KẾT QUẢ ĐĂNG KÝ</div>";
            kq += "<ul>";
            kq += string.Format("<li> Họ tên: <b> {0} </b>", txtHoTen.Text);
            kq += string.Format("<li> Ngày sinh: <b> {0} </b>", txtNgaysinh.Text);
            kq += string.Format("<li> Giới tính: <b> {0} </b>", (rdNam.Checked? rdNam.Text: rdNu.Text));
            kq += string.Format("<li> Trình độ: <b> {0} </b>", ddlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp: <b> {0} </b>", lstNgheNghiep.SelectedItem.Text);
            //xử lý upload file
            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads"); //lấy dường dẫn tuyệt đối của thư mục Uploads
                string filename = FHinh.FileName; //lấy tên file từ client gửi
                FHinh.SaveAs(path + "/" + filename); //upload
                kq += string.Format("<li> Ảnh đại diện: <img src='/uploads/{0}' width='200px'>", filename);
            }
            // Lấy thông tin sở thích
            string sothich = "";
            foreach (ListItem item in cklSoThich.Items)
            {
                if (item.Selected)
                {
                    sothich += item.Text + ";";
                }
            }
            kq += string.Format("<li> Sở thích: <b> {0} </b>", sothich);
            kq += "</ul>";

            //b2. hồi đáp kết quả
            lbThongTin.Text = kq;
        }

        protected void btNhapLai_Click(object sender, EventArgs e)
        {
            txtHoTen.Text = "";
            txtNgaysinh.Text = "";
            ddlTrinhDo.SelectedIndex = 0;
            lstNgheNghiep.SelectedIndex = -1;
            foreach (ListItem item in cklSoThich.Items)
            {
                item.Selected = false;
            }
            lbThongTin.Text = "";
        }
    }
}