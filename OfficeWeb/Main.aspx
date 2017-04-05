<%@ Page Title="设备、环境和能源监控系统" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px; background-image: url('./image/main.png');">
        <div style="width: 100%; height: 100%;">
            <div style="margin: auto; width: 100%; height: 100%;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" >
                        </asp:Timer>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 156px;
                            left: -310px;">
                            <a href="monitor/washing_wate.aspx" title="洗手台用水">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="80"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="wash_water" runat="server" Text="100(L)" ForeColor="Green"></asp:Label></marquee></a>
                        </div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 75px;
                            left: -250px;">
                            <a href="monitor/drink_wate.aspx" title="饮水机用水">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="80"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="drink_water" runat="server" Text="200(L)" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 287px;
                            left: -333px;">
                            <a href="monitor/toilet_gas.aspx" title="卫生间有害气体">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="toilet_CO2" runat="server" Text="0.003%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 345px;
                            left: -316px;">
                            <a href="monitor/toilet_gas.aspx" title="卫生间有害气体">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="NH3" runat="server" Text="0.001%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 352px;
                            left: -204px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="office_tem1" runat="server" Text="35℃50%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 312px;
                            left: -119px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" 
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="office_light1" runat="server" Text="2300(lux)" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 314px;
                            left: -23px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="80"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="dust" runat="server" Text="0%" ForeColor="Green" Height="20" Width="100"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 190px;
                            left: 318px;">
                            <a href="monitor/manager_envi.aspx" title="经理办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="man_tem" runat="server" Text="35℃50%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: 39px;
                            left: 303px;">
                            <a href="monitor/manager_envi.aspx" title="经理办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="man_light" runat="server" Text="2300(lux)" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: -40px;
                            left: 216px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" 
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="office_light" runat="server" Text="2000(lux)" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: -48px;
                            left: 126px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="office_tem2" runat="server" Text="35℃50%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: -105px;
                            left: 19px;">
                            <a href="monitor/office_envi.aspx" title="公共办公室环境">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="50"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="office_CO2" runat="server" Text="0.001%" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: -168px;
                            left: -146px;">
                            <a href="monitor/monitor.aspx" title="空调主机用电">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="20"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="air_elec" runat="server" Text="360(kw.h)" ForeColor="Green"></asp:Label></marquee></a></div>
                        <div style="font-size: small; position: relative; width: 100px; height: 20px; top: -167px;
                            left: -69px;">
                            <a href="monitor/wind_elec.aspx" title="抽风机用电">
                                <marquee onmouseover="stop()" onmouseout="start()"   behavior="slide" scrolldelay="20"
                    direction="up"  scrollamount="1"  width="100px" height="20px" style=" text-align:center "><asp:Label ID="wind_elec" runat="server" Text="300(kw.h)" ForeColor="Green"></asp:Label></marquee></a></div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    
</asp:Content>
