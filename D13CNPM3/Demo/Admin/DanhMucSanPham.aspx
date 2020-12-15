<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="DanhMucSanPham.aspx.cs" Inherits="Demo.Admin.QLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Danh mục sản phẩm</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Danh mục sản phẩm</span>
                </li>
                
            </ol>
        </div>
        <div class="col-lg-2">

        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    
                    <form class="ibox-content" runat="server">
                        <div class="ibox-title" style="width:100%; height: 60px;">

                        <asp:Button runat="server" ID="btnThem" Style="margin-left:15px; margin-top:10px;" 
                            CssClass="btn btn-info" Text="Thêm mới"
                            OnClick="btnThem_Click"
                         />
                        
                        </div>
                        <asp:GridView runat="server"
                            AutoGenerateColumns="false"
                            ID="dgvSanPham" 
                            class="table table-bordered" width="100%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="id_san_pham" HeaderText="Mã sản phẩm" />
                                <asp:BoundField DataField="DanhMucSanPham.ten_danh_muc" HeaderText="Danh mục sản phẩm" />
                                <asp:BoundField DataField="ThuongHieu.ten_thuong_hieu" HeaderText="Thương hiệu" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Ảnh đại diện</HeaderTemplate>
                                    <ItemTemplate>
                                        <img height="80px" src='<%# "../Uploads/AnhSP/" + getAnhDaiDien(Eval("id_san_pham").ToString()) %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ten_san_pham" HeaderText="Tên sản phẩm" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Giá bán</HeaderTemplate>
                                    <ItemTemplate>
                                        <%# ((decimal)Eval("gia_san_pham")).ToString("N0") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Khuyến mại</HeaderTemplate>
                                    <ItemTemplate>
                                        <%# ((double)Eval("phan_tram_khuyen_mai")).ToString("N0") + "%"%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="so_luong_ton_kho" HeaderText="Số lượng tồn kho" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Chức năng</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_san_pham") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>

                                        <a href='<%# "CTSanPham.aspx?id_san_pham=" + Eval("id_san_pham").ToString()%>'
                                        >Sửa</a>

                                        <a href='<%# "UploadAnh.aspx?id_san_pham=" + Eval("id_san_pham").ToString()%>'
                                        >Upload ảnh</a>

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function check() {
            if (confirm("Bạn thực sự muốn xóa? Thao tác này sẽ không khôi phục lại được!") == true){
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
