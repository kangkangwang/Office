<%@ Page Title="历史报表" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="history.aspx.cs" Inherits="history_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style7
        {
            height: 20px;
        }
        .style3
        {
            width: 55px;
        }
        #Select1
        {
            width: 125px;
            margin-left: 0px;
        }
        #Select2
        {
            width: 105px;
            margin-left: 0px;
        }
        .style5
        {
            color: #666666;
            font-size: large;
        }
        .style6
        {
            font-size: small;
            text-align: left;
            color: #666666;
        }
        .style8
        {
            color: #FFFFFF;
        }
        .style9
        {
            height: 20px;
            width: 55px;
            color: #FFFFFF;
        }
        .style10
        {
            height: 20px;
            width: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 200px; height: 470px; float: left; background-color: #699ED2;">
        <div style="width: 100%; height: 100%; ">
            <asp:Panel ID="Panel3" runat="server">
                <div style="height: 470px;">
                    <div align="center" style="padding-top: 10px; font-size: small;">
                        <div style="border-color: #CCCCCC; border-width: 1px; border-bottom-style: ridge;">
                            <p class="style5">
                                <asp:Label ID="currenttime" runat="server" Height="33px" Width="200px" 
                                    Text="2013-10-27" Font-Bold="True" ForeColor="White"></asp:Label></p>
                        </div>
                        <table style="width: 100%;">
                            <tr>
                                <td class="style10">
                                    <span class="style8">起始时间</span>
                                </td>
                                <td class="style7">
                                    <div>
                                        <dx:ASPxDateEdit ID="start" runat="server" EditFormat="DateTime" 
                                            Theme="Office2010Blue" Width="130px" Date="2013-01-01" AllowNull="False">
                                        </dx:ASPxDateEdit>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    <span class="style8">终止时间</span>
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="end" runat="server" EditFormat="DateTime" 
                                        Theme="Office2010Blue" Width="130px" Date="2013-01-01" AllowNull="False">
                                    </dx:ASPxDateEdit>
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    数    据
                                </td>
                                <td>
                                    <select id="Select2" name="D1" runat = "server" style="width: 130px">
                                        <option>空调主机用电</option>
                                        <option>抽风机用电</option>
                                        <option>饮水机用水</option>
                                        <option>洗手台用水</option>
                                        <option>经理室环境</option>
                                        <option>办公室环境</option>
                                        <option>洗手间有害气体</option>
                                        <option>报警记录</option>
                                        
                                        
                                    </select>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <p style="height: 54px">
                        <asp:Button ID="Button5" runat="server" Text="导出数据" Height="30px" 
                            onclick="Button5_Click" Width="70px" />

                        &nbsp;

                        <asp:Button ID="Button4" runat="server" Height="30px" Text="查询" Width="70px" 
                            onclick="Button4_Click" />
                    </p>
                    <div align="center" style="border-color: #CCCCCC; border-width: 1px; border-top-style: ridge;">
                        <p class="style6"><strong>快捷查询</strong></p>
                        <div>
                            <asp:Button ID="Button2" runat="server" Height="30px" Text="本月" Width="50px" 
                                onclick="Button2_Click" />
                            
                            &nbsp;<asp:Button ID="Button3" runat="server" Height="30px" Text="本周" Width="50px" 
                                onclick="Button3_Click" />
                            
                            &nbsp;<asp:Button ID="Button1" runat="server" Height="30px" Text="今天" Width="50px" 
                                onclick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px; background-color: #FFFFFF;">
        <div style="width: 100%; height: 100%" align="center">
        <div div align="left" style="font-family: 微软雅黑; line-height: 20px; font-size: 14px;">当前位置>>历史报表</div>
            <div style="height: 400px;  padding-bottom: 20px;">
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" 
                    EnableTheming="True"  Theme="Office2010Blue" Width="700px">
                    <Columns>
                    
                    </Columns>
                    <SettingsPager PageSize="16">
                    </SettingsPager>
                </dx:ASPxGridView>
                <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
                    GridViewID="ASPxGridView1">
                </dx:ASPxGridViewExporter>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Deer OfficeConnectionString %>"
                    SelectCommand=""></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
