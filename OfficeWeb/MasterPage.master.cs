using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public String str="";
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        if (Session["User"] != null || Session["Pwd"] != null)
        {
            user.Text = "当前用户："+Session["User"].ToString()+" 用户权限：管理员";
        }
        else
        {
            Response.Redirect("~/Default.aspx");//返回登录页面
        }
    }
}
