<%@ Page Title="设备、环境和能源监控系统" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body background="image/1.jpg">
    <form id="form1" runat="server">
    <div style="background-position: center; background-image: url('image/load.png');
        height: 500px; width: 800px; background-repeat: no-repeat; margin-right: auto;
        margin-left: auto;">
        <div align="center">
            <div style="position: relative; top: 191px; left: 24px;">
                <asp:TextBox ID="nametex" runat="server" Height="30px" Width="160px"></asp:TextBox></div>
            <div style="position: relative; top: 196px; left: 24px;">
                <asp:TextBox ID="passwordtex" runat="server" TextMode="Password" Height="30px" Width="160px"></asp:TextBox></div>
            <div style="position: relative; top: 217px; left: 24px;">
                <asp:TextBox ID="untitle" runat="server" Height="20px" Width="90px"></asp:TextBox>
                <asp:ImageButton ID="Image1" runat="server" Height="20px" Width="60px" 
                    ImageUrl="~/securitycode.aspx"   />
            </div>
            <div style="position: relative; top: 236px; left: -23px;">
                <asp:Button ID="login" runat="server" Text="登录进站" OnClick="login_Click" Font-Size="10pt"
                    ForeColor="Red" Height="30px" Width="70px" /></div>
            <div style="position: relative; top: 261px; left: 1px;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/Deer.png" Width="120px" />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/hfut.png" Width="100px" />
            </div>
        </div>
    </div>
    </form>
    <div>
        <p align="center" style="font-size: 13px; font-family: 宋体, Arial, Helvetica, sans-serif;
            line-height: 5px;">
            设备、环境和能源监控系统</p>
        <p align="center" style="font-size: 13px; font-family: 宋体, Arial, Helvetica, sans-serif;
            line-height: 5px;">
            Equipment, environment and energy monitoring systems</p>
        <p align="center" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 13px;
            line-height: 5px;">
            Copyright © 2013 版权所有 <span>德尔工业服务有限公司 </span>合肥工业大学</p>
    </div>
</body>
<script type="text/javascript">
    var img = document.getElementById('Image1');
    img.onclick() = function () {
        img.ImageUrl = "~/securitycode.aspx";
    }
</script>
</html>
