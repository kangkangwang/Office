using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class monitor_office_envi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Timer1.Interval = 5000;
        if (!Page.IsPostBack)
        {
            ASPxTabControl1.ActiveTabIndex = 0;
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
        
        }
    }
    protected void Cliked(object source, DevExpress.Web.ASPxTabControl.TabControlEventArgs e)
    {
        if (e.Tab.Text == "CO2")
        {
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
        }
        if (e.Tab.Text == "粉尘")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = true;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
        }
        if (e.Tab.Text == "温度")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = true;
            monitor1.Series[3].Visible = true;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
        }
        if (e.Tab.Text == "湿度")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = true;
            monitor1.Series[5].Visible = true;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
        }
        if (e.Tab.Text == "光照度")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = true;
            monitor1.Series[7].Visible = true;
        }
       
    }
}