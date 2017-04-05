using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class monitor_wind_elec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Timer1.Interval = 5000;
        if (!IsPostBack)
        {
            ASPxTabControl1.ActiveTabIndex = 0;
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
        }

    }
    protected void Cliked(object source, DevExpress.Web.ASPxTabControl.TabControlEventArgs e)
    {
        if (e.Tab.Text == "电压")
        {
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;


        }
        if (e.Tab.Text == "电流")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = true;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;

        }
        if (e.Tab.Text == "功率")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = true;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;

        }
        if (e.Tab.Text == "功率因数")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = true;
            monitor1.Series[4].Visible = false;

        }

        if (e.Tab.Text == "用电量")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = true;

        }
    }
}