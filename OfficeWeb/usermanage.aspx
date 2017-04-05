<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usermanage.aspx.cs" Inherits="usermanage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 195px;
        }
        .style2
        {
        }
        .style3
        {
            width: 121px;
        }
        .style4
        {
            font-family: 华文中宋;
            
        }
        .style5
        {
            height: 60px;
        }
        .style6
        {
            width: 121px;
            height: 60px;
        }
        .style7
        {
            width: 195px;
            height: 60px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 200px; height: 470px; float: left;">
        <div style="width: 100%; height: 100%;">
            <asp:Panel ID="Panel3" runat="server">
                <div style="height: 470px;">
                    <div class="menubg flt">
                        <ul class="menu flt">
                            <li class="" style="margin-top: 16px;" title="主页"><a href="Main.aspx">主页</a></li>
                            <li class=""><a href="monitor/monitor.aspx" title="空调主机用电">空调主机用电</a></li>
                            <li class=""><a href="monitor/wind_elec.aspx" title="抽风机用电">抽风机用电</a></li>
                            <li class=""><a href="monitor/drink_wate.aspx" title="饮水机用水">饮水机用水</a></li>
                            <li class=""><a href="monitor/washing_wate.aspx" title="洗手台用水">洗手台用水</a></li>
                            <li class=""><a href="monitor/manager_envi.aspx" title="经理办公室环境">经理办公室环境</a></li>
                            <li class=""><a href="monitor/office_envi.aspx" title="公共办公室环境">公共办公室环境</a></li>
                            <li class=""><a href="monitor/toilet_gas.aspx" title="卫生间有害气体">卫生间有害气体</a></li>
                            <li class=""><a href="http://www.dservice.cn" title="关于">关于</a></li>
                        </ul>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px; background-color: #FFFFFF;">
    <div style="position: relative; top: 40px; left: 0px; height: 399px;">
        
            <table style="width: 100%; height: 308px;">
                <tr>
                    <td class="style4" colspan="4" align="center">
                        
                        账号设置</td>
                </tr>
                <tr>
                    <td class="style2">
                        
                        &nbsp;</td>
                    <td class="style3">
                        
                        <asp:Label ID="Label2" runat="server" Text="用户名" style="font-family: 华文中宋"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="userID" runat="server" Width="150px"></asp:TextBox>
                      
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="style2">
                      
                        &nbsp;</td>
                    <td class="style3">
                      
                        <asp:Label ID="Label3" runat="server" Text="原始密码" style="font-family: 华文中宋"></asp:Label>
                    </td>
                    <td class="style1">
                      
                        <asp:TextBox ID="password" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                       
                        &nbsp;</td>
                    <td class="style3">
                       
                        <asp:Label ID="Label4" runat="server" Text="修改密码" style="font-family: 华文中宋" ></asp:Label>
                    </td>
                    <td class="style1">
                        
                        <asp:TextBox ID="newpassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        </td>
                </tr>
   
                
                <tr>
                    <td class="style2">
                       
                        &nbsp;</td>
                    <td class="style3">
                       
                        <asp:Label ID="Label5" runat="server" Text="确认密码" style="font-family: 华文中宋" ></asp:Label>
                    </td>
                    <td class="style1">
                        
                        <asp:TextBox ID="confrompassword" runat="server" TextMode="Password" 
                            Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
   
                
                <tr>
                    <td class="style5">
                       
                        </td>
                    <td class="style6">
                       
                        <asp:Button ID="Button1" runat="server" Text="提交" Width="80px" 
                            onclick="Button1_Click" />
                        </td>
                    <td class="style7">
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:Button ID="Button2" runat="server" Text="取消" Width="80px" 
                            onclick="Button2_Click" />
                    </td>
                    <td class="style5">
                        </td>
                </tr>
   
                
            </table>
            
                        
                        </div>
    </div>
</asp:Content>

