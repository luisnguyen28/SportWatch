using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class QLSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getData();
            }

        }
        public void getData()
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            List<Models.SanPham> lst = db.SanPham.ToList();
            dgvSanPham.DataSource = lst;
            dgvSanPham.DataBind();
        }

        public string getAnhDaiDien(string MaSP)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.ImgSanPham obj = db.ImgSanPham.FirstOrDefault(x => x.id_san_pham == MaSP && x.main == true);
            if(obj != null)
            {
                return "";
            }
            else
            {
                return "";
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string id_san_pham = e.CommandArgument.ToString();
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Models.SanPham obj = db.SanPham.FirstOrDefault(x => x.id_san_pham == id_san_pham);
            if (obj != null)
            {
                db.SanPham.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("CTSanPham.aspx");
        }
    }
}