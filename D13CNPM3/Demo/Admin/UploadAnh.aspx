<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="UploadAnh.aspx.cs" Inherits="Demo.Admin.UploadAnh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-lg-7">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Ảnh sản phẩm</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#">Config option 1</a>
                            </li>
                            <li><a href="#">Config option 2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <asp:GridView AutoGenerateColumns="false" runat="server" ID="dgvMedia" CssClass="table table-responsive table-bordered table-hover">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="id_san_pham" />
                            <asp:TemplateField>
                                <HeaderTemplate>Ảnh</HeaderTemplate>
                                <ItemTemplate>
                                    <img height="100px" src='<%# "../Uploads/AnhSP/" + Eval("img").ToString() %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CheckBoxField HeaderText="Ảnh đại diện" DataField="Main" />
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Chức năng
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="btnXoa" CssClass="text-danger">Xóa</asp:LinkButton>
                                    <asp:LinkButton runat="server" ID="btnSua">Sửa</asp:LinkButton>
                                
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Cập nhật thông tin</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#">Config option 1</a>
                            </li>
                            <li><a href="#">Config option 2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Mã sản phẩm</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" Enabled="false" ID="txtMaSP" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Upload file</label>
                            <div class="col-lg-9">
                                <asp:FileUpload runat="server" ID="fuImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Ảnh đại diện</label>
                            <div class="col-lg-9">
                                <asp:CheckBox runat="server" ID="chkMain" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button runat="server" ID="btnUpload" class="btn btn-sm btn-primary" type="submit" Text="Upload"
                                    OnClick="btnUpload_Click"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">

</asp:Content>
