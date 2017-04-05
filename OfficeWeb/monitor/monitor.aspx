<%@ Page Title="数据监测" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="monitor.aspx.cs" Inherits="monitor_monitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 200px; height: 470px; float: left;">
        <div style="width: 100%; height: 100%; background-color: #6FA9C7;">
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
    <div style="width: 765px; height: 470px; float: right; padding-right: 5px; background-color: #FFFFFF;">
        <div style="width: 100%; height: 100%;">
            <div style="height: 50px;">
                 <div div align="left" style="font-family: 微软雅黑; line-height: 20px; font-size: 14px;">当前位置>>空调主机用电</div>
                <asp:Label ID="Label1" runat="server" Text="数据监测" ForeColor="Black" 
                     Font-Bold="True" style="font-size: x-large"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            <div style="height: 370px; width: 100%;">
                <div align="left" style="padding-left: 80px">
                    <dx:ASPxTabControl ID="ASPxTabControl1" runat="server" ActiveTabIndex="3" 
                        Theme="Office2010Blue" OnTabClick="Cliked">
                        <Tabs>
                            <dx:Tab Text="电压">
                            </dx:Tab>
                            <dx:Tab Text="电流">
                            </dx:Tab>
                            <dx:Tab Text="功率因数">
                            </dx:Tab>
                            <dx:Tab Text="功率">
                            </dx:Tab>
                            <dx:Tab Text="用电量">
                            </dx:Tab>
                        </Tabs>
                    </dx:ASPxTabControl>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" >
                        </asp:Timer>
                <dx:WebChartControl ID="monitor1" runat="server" Height="380px" Width="650px" DataSourceID="SqlDataSource1">
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
                <dx:Series Name="A相电压(V)" ArgumentDataMember="时间" 
                        ValueDataMembersSerializable="A相电压">
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
                <dx:Series Name="B相电压(V)" ArgumentDataMember="时间" 
                        ValueDataMembersSerializable="B相电压">
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
                        <dx:Series ArgumentDataMember="时间" Name="C相电压(V)" 
                            ValueDataMembersSerializable="C相电压">
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
                        <dx:Series ArgumentDataMember="时间" Name="A相电流(A)" 
                            ValueDataMembersSerializable="A相电流">
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
                        <dx:Series ArgumentDataMember="时间" Name="B相电流(A)" 
                            ValueDataMembersSerializable="B相电流">
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
                        <dx:Series ArgumentDataMember="时间" Name="C相电流(A)" 
                            ValueDataMembersSerializable="C相电流">
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
                        <dx:Series ArgumentDataMember="时间" Name="功率因数" 
                            ValueDataMembersSerializable="功率因数">
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
                        <dx:Series ArgumentDataMember="时间" Name="功率(W)" 
                        ValueDataMembersSerializable="功率">
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
                        <dx:Series ArgumentDataMember="时间" Name="用电量(Kw.h)" 
                            ValueDataMembersSerializable="用电量">
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
                        <dx:ChartTitle Text="空调主机用电" TextColor="Black" Font="Tahoma, 12pt" />
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
                </asp:UpdatePanel>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Deer OfficeConnectionString %>"
                SelectCommand="SELECT * FROM [空调主机用电视图]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
