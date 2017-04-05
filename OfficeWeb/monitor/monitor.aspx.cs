using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using DevExpress.Web.ASPxTreeView;
public partial class monitor_monitor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Timer1.Interval = 5000;
        if (!IsPostBack)
        {
            ASPxTabControl1.ActiveTabIndex = 0;
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = true;
            monitor1.Series[2].Visible = true;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
            monitor1.Series[8].Visible = false;
        }
    }
    protected void Cliked(object source, DevExpress.Web.ASPxTabControl.TabControlEventArgs e)
    {
        if (e.Tab.Text == "电压")
        {
            monitor1.Series[0].Visible = true;
            monitor1.Series[1].Visible = true;
            monitor1.Series[2].Visible = true;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
            monitor1.Series[8].Visible = false;
            
            
        }
        if (e.Tab.Text == "电流")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = true;
            monitor1.Series[4].Visible = true;
            monitor1.Series[5].Visible = true;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
            monitor1.Series[8].Visible = false;
            
        }
        
        if (e.Tab.Text == "功率因数")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = true;
            monitor1.Series[7].Visible = false;
            monitor1.Series[8].Visible = false;
            
        }
        if (e.Tab.Text == "功率")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = true;
            monitor1.Series[8].Visible = false;
            
        }
        if (e.Tab.Text == "用电量")
        {
            monitor1.Series[0].Visible = false;
            monitor1.Series[1].Visible = false;
            monitor1.Series[2].Visible = false;
            monitor1.Series[3].Visible = false;
            monitor1.Series[4].Visible = false;
            monitor1.Series[5].Visible = false;
            monitor1.Series[6].Visible = false;
            monitor1.Series[7].Visible = false;
            monitor1.Series[8].Visible = true;
           
        }
    }

    
}