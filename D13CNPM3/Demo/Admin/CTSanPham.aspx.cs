using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class CTSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getDanhMuc();
                getThuongHieu();
                getGioiTinh();
                string id_san_pham = Request.QueryString["id_san_pham"];
                if(id_san_pham != null && id_san_pham != "")
                {
                    getData(id_san_pham);
                    btnThemMoi.Visible = false;
                }
                else
                {
                    btnSua.Visible = false;
                }


            }
        }

        public void getData(string id_san_pham)
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            Demo.Models.SanPham obj = db.SanPham.FirstOrDefault(x => x.id_san_pham == id_san_pham);
            if (obj == null)
            {
                Response.Redirect("DanhMucSanPham.aspx");
            }
            else
            {
                txtMaSP.Text = id_san_pham;
                txtMaSP.Enabled = false;

                txtTenSP.Text = obj.ten_san_pham;
                txtGiaBan.Text = obj.gia_san_pham.ToString();
                txtPhanTramKM.Text = obj.phan_tram_khuyen_mai.ToString();
                txtSoLuong.Text = obj.so_luong_ton_kho.ToString();
                txtMoTa.Text = obj.mo_ta_san_pham;
                txtBaoHanh.Text = obj.so_thang_bao_hanh.ToString();
                txtTinhNang.Text = obj.tinh_nang_san_pham;
                try
                {
                    cmbThuongHieuSP.SelectedValue = obj.ThuongHieu.id_thuong_hieu.ToString();
                }
                catch (Exception) {
                    cmbThuongHieuSP.SelectedIndex = -1;
                }
                try
                {
                    cmbDanhMucSP.SelectedValue = obj.DanhMucSanPham.id_danh_muc.ToString();
                }
                catch (Exception) {
                    cmbDanhMucSP.SelectedIndex = -1;
                }
                try
                {
                    cmbSex.SelectedValue = obj.gioi_tinh;
                }
                catch (Exception) {
                    cmbSex.SelectedIndex = -1;
                }

            }
        }

        public void getDanhMuc()
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            cmbDanhMucSP.DataSource = db.DanhMucSanPham.ToList();
            cmbDanhMucSP.DataValueField = "id_danh_muc";
            cmbDanhMucSP.DataTextField = "ten_danh_muc";
            cmbDanhMucSP.DataBind();
        }
        public void getThuongHieu()
        {
            Demo.Models.BanDongHoEntities db = new Models.BanDongHoEntities();
            cmbThuongHieuSP.DataSource = db.ThuongHieu.ToList();
            cmbThuongHieuSP.DataValueField = "id_thuong_hieu";
            cmbThuongHieuSP.DataTextField = "ten_thuong_hieu";
            cmbThuongHieuSP.DataBind();
        }
        public void getGioiTinh()
        {
            List<string> list = new List<string>();
            list.Add("Unisex");
            list.Add("Male");
            list.Add("Female");
            cmbSex.DataSource = list;
            cmbSex.DataBind();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_san_pham = txtMaSP.Text;
                Models.SanPham obj = db.SanPham.FirstOrDefault(x => x.id_san_pham == id_san_pham);
                if (obj == null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Không có sản phẩm nào để sửa, xem lại ";
                    hpError.Text = id_san_pham;
                    hpError.NavigateUrl = "CTSanPham.aspx?id_san_pham=" + id_san_pham;
                }
                else
                {

                    obj.ten_san_pham = txtTenSP.Text;
                    obj.gia_san_pham = decimal.Parse(txtGiaBan.Text);
                    obj.phan_tram_khuyen_mai = double.Parse(txtPhanTramKM.Text);
                    obj.so_luong_ton_kho = int.Parse(txtSoLuong.Text);
                    obj.mo_ta_san_pham = txtMoTa.Text;
                    obj.tinh_nang_san_pham = txtTinhNang.Text;
                    obj.gioi_tinh = cmbSex.SelectedValue;
                    obj.so_thang_bao_hanh = int.Parse(txtBaoHanh.Text);

                    obj.id_danh_muc = int.Parse(cmbDanhMucSP.SelectedValue);
                    obj.id_thuong_hieu = int.Parse(cmbThuongHieuSP.SelectedValue);

                    db.SaveChanges();

                    pnError.Visible = true;
                    lbError.Text = "Sửa thành công!";
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }

        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra mã có tồn tại chưa?
                Models.BanDongHoEntities db = new Models.BanDongHoEntities();
                string id_san_pham = txtMaSP.Text;
                Models.SanPham obj = db.SanPham.FirstOrDefault(x => x.id_san_pham == id_san_pham);
                if (obj != null)
                {
                    pnError.Visible = true;
                    lbError.Text = "Mã sản phẩm bị trùng, xem chi tiết tại ";
                    hpError.Text = id_san_pham;
                    hpError.NavigateUrl = "CTSanPham.aspx?id_san_pham=" + id_san_pham;
                }
                else
                {
                    obj = new Models.SanPham();
                    obj.id_san_pham = txtMaSP.Text;
                    obj.ten_san_pham = txtTenSP.Text;
                    obj.gia_san_pham = decimal.Parse(txtGiaBan.Text);
                    obj.phan_tram_khuyen_mai = double.Parse(txtPhanTramKM.Text);
                    obj.so_luong_ton_kho = int.Parse(txtSoLuong.Text);
                    obj.mo_ta_san_pham = txtMoTa.Text;
                    obj.tinh_nang_san_pham = txtTinhNang.Text;
                    obj.gioi_tinh = cmbSex.SelectedValue;
                    obj.so_thang_bao_hanh = int.Parse(txtBaoHanh.Text);

                    obj.id_danh_muc = int.Parse(cmbDanhMucSP.SelectedValue);
                    obj.id_thuong_hieu = int.Parse(cmbThuongHieuSP.SelectedValue);

                    db.SanPham.Add(obj);
                    db.SaveChanges();
                    Response.Redirect("DanhMucSanPham.aspx");
                }
            }
            catch
            {
                pnError.Visible = true;
                lbError.Text = "Lỗi, không lưu lại được!";
            }
        }
        protected void btnQuayLai_Click(object sender, EventArgs e)
        {
            Response.Redirect("DanhMucSanPham.aspx");
        }
        

    }
}