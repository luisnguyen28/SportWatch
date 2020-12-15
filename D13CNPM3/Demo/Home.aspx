<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Demo.Home" %>

<%@ Register Src="~/UserControl/ucDangNhap.ascx" TagPrefix="uc1" TagName="ucDangNhap" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <h1>Trang chủ</h1>
        <div>
            <uc1:ucDangNhap runat="server" id="ucDangNhap" />
        </div>
    </form>
</body>
</html>
