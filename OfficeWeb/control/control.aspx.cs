using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void But_wind1_Click(object sender, ImageClickEventArgs e)
    {
        if (But_wind1.ImageUrl == "~/image/on.png")
        {
            But_wind1.ImageUrl = "~/image/off.png";
        }
        else
        {
            But_wind1.ImageUrl = "~/image/on.png";
        }
    }
    protected void But_wind2_Click(object sender, ImageClickEventArgs e)
    {
        if (But_wind2.ImageUrl == "~/image/on.png")
        {
            But_wind2.ImageUrl = "~/image/off.png";
        }
        else
        {
            But_wind2.ImageUrl = "~/image/on.png";
        }
    }
    protected void But_secu_Click(object sender, ImageClickEventArgs e)
    {
        if (But_secu.ImageUrl == "~/image/on.png")
        {
            But_secu.ImageUrl = "~/image/off.png";
        }
        else
        {
            But_secu.ImageUrl = "~/image/on.png";
        }
    }
}