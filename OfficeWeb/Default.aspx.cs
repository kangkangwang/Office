using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }

    }
    protected void login_Click(object sender, EventArgs e)
    {
        if (untitle.Text != Session["yanzhencode"].ToString())
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('验证码错误')</script>");
            return;
        }
        String sqlconn = System.Configuration.ConfigurationManager.ConnectionStrings["Deerstring"].ConnectionString;
        SqlConnection myConnection = new SqlConnection(sqlconn);
        myConnection.Open();
        SqlCommand mycommand = new SqlCommand("SELECT *  FROM 用户 WHERE ID = '" + nametex.Text + "'", myConnection);
        mycommand.CommandTimeout = 500;
        try
        {
            SqlDataReader reader = mycommand.ExecuteReader();

            if (reader.Read())
            {
                if (passwordtex.Text == reader[1].ToString())
                {
                    Session["User"] = nametex.Text;
                    Session["Pwd"] = passwordtex.Text;
                    Response.Redirect("~/Main.aspx");
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('用户名或密码错误')</script>");

                }
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.alert('用户名或密码错误')</script>");
            }
                
        }
        catch (SqlException k)
        {
            return;//连接超时
        }

    }
}