<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Demo.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .top{
            width: 100%;
            height: 150px;
            background-color: red;
        }
        .middle{
            width: 100%;
            height: 1000px;
            background-color: green;
        }
        .middle .left{
            width: 20%;
            height: 100%;
            background-color: pink;
            float: left;
        }
        .middle .center{
            width: 60%;
            height: 100%;
            background-color: yellow;
            float: left;
        }
        .middle .right{
            width: 20%;
            height: 100%;
            background-color: brown;
            float: left;
        }
        .bottom{
            width: 100%;
            height: 100px;
            background-color: blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top">
        </div>
        <div class="middle">
            <div class="left">

            </div>
            <div class="center">

            </div>
            <div class="right">

            </div>
        </div>
        <div class="bottom">
        </div>
    </form>
</body>
</html>
