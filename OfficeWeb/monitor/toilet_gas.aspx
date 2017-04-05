<%@ Page Title="数据监测" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="toilet_gas.aspx.cs" Inherits="monitor_toilet_gas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 200px; height: 470px; float: left;">
        <div style="width: 100%; height: 100%;">
            <asp:Panel ID="Panel3" runat="server">
                <div style="height: 470px;">
                   <div class="menubg flt">
	<ul class="menu flt">
		<li class="" style=" margin-top:16px;" title="主页"><a href="../Main.aspx">主页</a></li>
        <li class=""><a href="monitor.aspx" title="空调主机用电">空调主机用电</a></li>
		<li class=""><a href="wind_elec.aspx" title="抽风机用电">抽风机用电</a></li>
		<li class=""><a href="drink_wate.aspx" title="饮水机用水">饮水机用水</a></li>
		<li class=""><a href="washing_wate.aspx" title="洗手台用水">洗手台用水</a></li>
		<li class=""><a href="manager_envi.aspx" title="经理办公室环境">经理办公室环境</a></li>
		<li class=""><a href="office_envi.aspx" title="公共办公室环境">公共办公室环境</a></li>
        <li class=""><a href="toilet_gas.aspx" title="卫生间有害气体">卫生间有害气体</a></li>
		
		<li class=""><a href="http://www.dservice.cn" title="关于">关于</a></li>
	</ul>	
</div>
                </div>
            </asp:Panel>
        </div>
    </div>
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px;background-color: #FFFFFF;">
        <div style="width: 100%; height: 100%;">
            <div style="height: 50px; ">
                 <div div align="left" style="font-family: 微软雅黑; line-height: 20px; font-size: 14px;">当前位置>>卫生间有害气体</div>
                <asp:Label ID="Label1" runat="server" Text="数据监测" ForeColor="Black" 
                     Font-Bold="True" style="font-size: x-large"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            <div style= "height:370px; width:100%;" >
                <div align="left" style="padding-left: 80px">
                    <dx:ASPxTabControl ID="ASPxTabControl1" runat="server" ActiveTabIndex="1" 
                    Theme="Office2010Blue" OnTabClick="Cliked">
                    <Tabs>
                        <dx:Tab Text="CO2">
                        </dx:Tab>
                        <dx:Tab Text="NH3">
                        </dx:Tab>
                    </Tabs>
                </dx:ASPxTabControl>
            </div><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" >
                        </asp:Timer>
                <dx:WebChartControl ID="monitor1" runat="server" Height="380px" Width="650px" 
                    DataSourceID="SqlDataSource1">
                    <diagramserializable>
                        <dx:SwiftPlotDiagram>
                            <axisx visibleinpanesserializable="-1" minorcount="24">
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                            </axisx>
                            <axisy visibleinpanesserializable="-1">
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                                <range sidemarginsenabled="True" />
                            </axisy>
                        </dx:SwiftPlotDiagram>
            </diagramserializable>
                    <fillstyle><OptionsSerializable>
<dx:SolidFillOptions></dx:SolidFillOptions>
</OptionsSerializable>
</fillstyle>
                    <legend alignmenthorizontal="Right" backcolor="Transparent"></legend>
                    <seriesserializable>
                <dx:Series Name="CO2(ppm)" ArgumentDataMember="时间" 
                        ValueDataMembersSerializable="CO2浓度">
                    <viewserializable>
                        <dx:SwiftPlotSeriesView>
                            <linestyle thickness="2" />
                            <linestyle thickness="2" />
                            <linestyle thickness="2" />
                            <linestyle thickness="2" />
                        </dx:SwiftPlotSeriesView>
                    </viewserializable>
                    <legendpointoptionsserializable>
                        <dx:PointOptions>
                        </dx:PointOptions>
                    </legendpointoptionsserializable>
                </dx:Series>
                        <dx:Series ArgumentDataMember="时间" Name="NH3(lel)" 
                            ValueDataMembersSerializable="NH3浓度">
                            <viewserializable>
                                <dx:SwiftPlotSeriesView>
                                    <linestyle thickness="2" />
                                    <linestyle thickness="2" />
                                    <linestyle thickness="2" />
                                    <linestyle thickness="2" />
                                </dx:SwiftPlotSeriesView>
                            </viewserializable>
                            <legendpointoptionsserializable>
                                <dx:PointOptions>
                                </dx:PointOptions>
                            </legendpointoptionsserializable>
                        </dx:Series>
            </seriesserializable>
                    <seriestemplate>
                <viewserializable>
                    <dx:LineSeriesView>
                    </dx:LineSeriesView>
                </viewserializable>
                <labelserializable>
                    <dx:PointSeriesLabel LineVisible="True">
                        <fillstyle>
                            <optionsserializable>
                                <dx:SolidFillOptions />
                            </optionsserializable>
                        </fillstyle>
                        <pointoptionsserializable>
                            <dx:PointOptions>
                            </dx:PointOptions>
                        </pointoptionsserializable>
                    </dx:PointSeriesLabel>
                </labelserializable>
                <legendpointoptionsserializable>
                    <dx:PointOptions>
                    </dx:PointOptions>
                </legendpointoptionsserializable>
            </seriestemplate>
                    <titles>
                        <dx:ChartTitle Text="洗手间有害气体" TextColor="Black" Font="Tahoma, 12pt"/>
                    </titles>
                    <crosshairoptions showargumentlabels="True" showargumentline="True" 
                        showvaluelabels="True" showvalueline="True"><CommonLabelPositionSerializable>
<dx:CrosshairMousePosition></dx:CrosshairMousePosition>
</CommonLabelPositionSerializable>
</crosshairoptions>
                    <tooltipoptions><ToolTipPositionSerializable>
<dx:ToolTipMousePosition></dx:ToolTipMousePosition>
</ToolTipPositionSerializable>
</tooltipoptions>
                </dx:WebChartControl>
                </ContentTemplate>
                </asp:UpdatePanel></div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Deer OfficeConnectionString %>"
                    SelectCommand="SELECT * FROM [洗手间有害气体视图]"></asp:SqlDataSource>
            
        </div>
    </div>
    </asp:Content>

