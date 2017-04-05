<%@ Page Title="远程控制" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="control.aspx.cs" Inherits="control_control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            color: #33CCFF;
        }
        .style3
        {
            font-size: x-large;
            color: #333300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div style="width: 200px; height: 470px; float: left;">
        <div style="width: 100%; height: 100%;">
            <asp:Panel ID="Panel3" runat="server">
                <div style="height: 470px;">
                
<div class="menubg flt">
	<ul class="menu flt">
		<li class="" style=" margin-top:16px;" title="主页"><a href="../Main.aspx">主页</a></li>
        <li class=""><a href="../monitor/monitor.aspx" title="空调主机用电">空调主机用电</a></li>
		<li class=""><a href="../monitor/wind_elec.aspx" title="抽风机用电">抽风机用电</a></li>
		<li class=""><a href="../monitor/drink_wate.aspx" title="饮水机用水">饮水机用水</a></li>
		<li class=""><a href="../monitor/washing_wate.aspx" title="洗手台用水">洗手台用水</a></li>
		<li class=""><a href="../monitor/manager_envi.aspx" title="经理办公室环境">经理办公室环境</a></li>
		<li class=""><a href="../monitor/office_envi.aspx" title="公共办公室环境">公共办公室环境</a></li>
        <li class=""><a href="../monitor/toilet_gas.aspx" title="卫生间有害气体">卫生间有害气体</a></li>
		
		<li class=""><a href="http://www.dservice.cn" title="关于">关于</a></li>
	</ul>	
</div>

                </div>
            </asp:Panel>
        </div>
    </div>
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px; background-color: #FFFFFF;">
        <div style="width: 100%; height: 100%" align="center">
            <div style="height: 400px; padding-bottom: 20px;">
            <div align="left" style="font-family: 微软雅黑; line-height: 20px; font-size: 14px;">当前位置>>远程控制</div>
                <p class="style3">
                    <strong>远程控制</strong></p>
                <p>
                    <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/image/choufengji.png" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="~/image/choufengji.png" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/image/anfang.png"
                        Style="margin-top: 17px" />
                </p>
                <p>
                    <span class="style2">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="办公室抽风机" Width="100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="卫生间抽风机" Width="100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label4" runat="server" Text="布防" Width="100px"></asp:Label>
                    </span>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    <asp:ImageButton ID="But_wind1" runat="server" ImageUrl="~/image/on.png" onclick="But_wind1_Click" 
                         />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="But_wind2" runat="server" ImageUrl="~/image/off.png" onclick="But_wind2_Click" 
                         />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="But_secu" runat="server" ImageUrl="~/image/off.png" onclick="But_secu_Click" 
                         />
                </p>
                <p><a href="Deer://">欧瑞博控制端</a></p>
            </div>
        </div>
    </div>
</asp:Content>
