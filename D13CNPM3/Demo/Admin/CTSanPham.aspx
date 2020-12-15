<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="CTSanPham.aspx.cs" Inherits="Demo.Admin.CTSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title" style="margin-left:10px; margin-top:2%; margin-bottom:2%">
                    <h3>Cập nhật chi tiết sản phẩm</h3>
                </div>
                <form class="ibox-content" runat="server" style ="margin-left:2%">
                    <asp:Panel runat="server" ID="pnError" Visible="false">
                        <div class="alert alert-danger">
                            <asp:Label runat="server" ID="lbError"></asp:Label><asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>.
                        </div>
                    </asp:Panel>
                    
                    <div class="form-horizontal">
                        <div class="form-group"><label class="col-sm-2 control-label">Mã sản phẩm <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtMaSP" type="text" CssClass="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Ví dụ: SP0001.</span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Tên sản phẩm <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtTenSP" type="text" class="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Ví dụ: Iphone 12 Pro MAX.</span>
                            </div>
                        </div>


                        

                        

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Giá bán <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtGiaBan" type="text" class="form-control" /> 
                                 <span class="help-block m-b-none" style="font-size:65%">Đơn vị VND.</span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Khuyến mại</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtPhanTramKM" type="text" class="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Đơn vị %.</span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Thời gian bảo hành</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtBaoHanh" type="text" class="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Đơn vị tháng.</span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Số lượng trong kho<span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtSoLuong" type="text" class="form-control" /> 
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Giới tính <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:DropDownList class="form-control" runat="server" ID="cmbSex">

                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Danh mục sản phẩm <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:DropDownList class="form-control" runat="server" ID="cmbDanhMucSP">

                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Danh mục sản phẩm <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:DropDownList class="form-control" runat="server" ID="cmbThuongHieuSP">

                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Tính năng</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtTinhNang" TextMode="MultiLine" type="text" class="form-control"  /> 
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Mô tả chi tiết</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtMoTa" TextMode="MultiLine" type="text" class="form-control"  /> 
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">

                                <asp:Button runat="server" ID="btnQuayLai" 
                                    CssClass="btn btn-white" Text="Quay lại"
                                    OnClick="btnQuayLai_Click"
                                />
                                <asp:Button runat="server" ID="btnSua" 
                                    CssClass="btn btn-primary" Text="Lưu lại"
                                    OnClientClick="return validEdit();"
                                    OnClick="btnSua_Click"
                                />
                                <asp:Button runat="server" ID="btnThemMoi" 
                                    CssClass="btn btn-primary" Text="Thêm mới"
                                    OnClientClick="return validAdd();"
                                    OnClick="btnThemMoi_Click"
                                />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function validEdit() {
            if (confirm("Bạn muốn sửa thông tin?")) {
                return true;
            }
            return false;
        }
        function validAdd() {
            if (confirm("Bạn muốn thêm?")) {
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
