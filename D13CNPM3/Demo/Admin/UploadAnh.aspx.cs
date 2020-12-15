using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class UploadAnh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string masp = Request.QueryString["id_san_pham"];
                getData(masp);
                txtMaSP.Text = masp;
            }
        }

        public void getData(string masp)
        {
            Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            dgvMedia.DataSource = db.ImgSanPham.Where(x => x.id_san_pham == masp).ToList();
            dgvMedia.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if(fuImg.HasFile == true)
            {
                // Bước 1: Tải file về server
                // Sinh tên file
                string filename = txtMaSP.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                string[] arr = fuImg.FileName.Split('.');
                string file_ext = arr[arr.Length - 1];
                filename += '.' + file_ext;
                string folder = Server.MapPath("~/Uploads/AnhSP/");
                fuImg.SaveAs(folder + filename);

                // Bước 2: Thêm dữ liệu vào Database
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                Models.ImgSanPham obj = new Models.ImgSanPham();
                obj.id_san_pham = txtMaSP.Text;
                obj.url = filename;
                obj.main = chkMain.Checked;
                db.ImgSanPham.Add(obj);
                db.SaveChanges();
                getData(txtMaSP.Text);
            }
        }
    }
}