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

        }
    }
}