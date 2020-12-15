<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDangNhap.ascx.cs" Inherits="Demo.UserControl.ucDangNhap" %>

<style>
    .login{
        width: 265px;
    }
    .login div{
        margin-bottom: 5px;
    }
    .login label{
        display: inline-block;
        width: 80px;
    }
</style>

<fieldset class="login">
    <legend>Login</legend>
    <div>
        <label for="txtTaiKhoan">Tài khoản: </label>
        <asp:TextBox runat="server" TextMode="SingleLine" ID="txtTaiKhoan" />
    </div>
    <div>
        <label for="txtMatKhau">Mật khẩu: </label>
        <asp:TextBox runat="server" TextMode="Password" id="txtMatKhau" />
    </div>
    <div>
        <asp:Button runat="server" id="btnDangNhap" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
        <a href="#">Đăng ký</a>
    </div>
</fieldset>