<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Demo.Product" %>

<%@ Register Src="~/UserControl/ucDangNhap.ascx" TagPrefix="uc1" TagName="ucDangNhap" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Sản phẩm</h1>
        <div>
            <uc1:ucDangNhap runat="server" ID="ucDangNhap" />
            <uc1:ucDangNhap runat="server" ID="ucDangNhap1" />
            <uc1:ucDangNhap runat="server" ID="ucDangNhap2" />
        </div>
    </form>
</body>
</html>
