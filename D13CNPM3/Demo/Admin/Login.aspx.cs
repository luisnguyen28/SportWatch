using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Thực hiện kiểm tra tài khoản/mật khẩu có khớp trong db hay không
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            string taikhoan = txtTaiKhoan.Text;
            string matkhau = txtMatKhau.Text;
            int soluong = db.Admin.Count(x => x.username == taikhoan && x.password == matkhau);
            if(soluong == 1)
            {
                // Khởi tạo 1 phiên làm việc, lưu trữ thông tin ai là người đang đăng nhập ở phiên này
                // Phải lưu trữ phía server => Session
                Session["username"] = taikhoan;

                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            }
        }
    }
}