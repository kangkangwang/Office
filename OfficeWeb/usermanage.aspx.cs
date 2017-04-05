using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState;

public partial class usermanage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ((MasterPage)Master).str = "当前位置：>>账号设置";
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (newpassword.Text == "")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('密码不能设为空')</script>");
            return;
        }
        else if(newpassword.Text!=confrompassword.Text)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('确认密码错误')</script>");
            return;
        }
        String sqlconn = System.Configuration.ConfigurationManager.ConnectionStrings["Deerstring"].ConnectionString;
        SqlConnection myConnection = new SqlConnection(sqlconn);
        myConnection.Open();
        SqlCommand mycommand = new SqlCommand("SELECT *  FROM 用户 WHERE ID = '" + userID.Text + "'", myConnection);

        SqlDataReader reader = mycommand.ExecuteReader();
        
        if (reader.Read())
        {
            if (password.Text == reader[1].ToString())
            {
                reader.Close();
  
                SqlCommand myoperation = new SqlCommand("UPDATE  用户 SET Password = '" + newpassword.Text + "'"+ " where ID='"+userID.Text+"'"  , myConnection);
                myoperation.ExecuteNonQuery();
                
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('用户密码已修改')</script>");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('用户名或密码错误')</script>");
            }
            
        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('用户名错误')</script>");
        }
        myConnection.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Main.aspx");//返回登录页面
    }
}