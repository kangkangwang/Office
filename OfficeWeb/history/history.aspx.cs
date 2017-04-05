using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class history_history : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        currenttime.Text = DateTime.Today.Year.ToString() + "-" + DateTime.Today.Month.ToString() + "-" + DateTime.Today.Day.ToString();
        
        //ASPxGridView1.KeyFieldName = "时间";        

        Button4_Click(sender, e);
        
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        String head = "";
        String str = "";

        str = str + "where 时间>  '" + start.Date + "' and 时间<=  '" + end.Date + "' ";
        
        head = getsqlcentence();
        ASPxGridView1.AutoGenerateColumns = true;
        ASPxGridView1.Columns.Clear();
        
        //ASPxGridView1.KeyFieldName = "时间";        
        SqlDataSource1.SelectCommand = head  +"  "+ str ;
        
        ASPxGridView1.DataSourceID = "SqlDataSource1";
        

        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        DateTime lt = dt ;
        end.Date = dt;
        lt = dt.AddDays(0 - Convert.ToInt32(dt.Day.ToString("d")));
        start.Date = lt.Date;
        ASPxGridView1.AutoGenerateColumns = true;
        ASPxGridView1.Columns.Clear();
        SqlDataSource1.SelectCommand = getsqlcentence() +" WHERE DATEDIFF(m, 时间, GETDATE()) =0 ";
        ASPxGridView1.DataSourceID = "SqlDataSource1";
        
        
        //SELECT * FROM A WHERE DATEDIFF(m, 时间, GETDATE()) =0
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        DateTime lt = dt;
        end.Date = dt;
        lt = dt.AddDays(0 - Convert.ToInt32(dt.DayOfWeek.ToString("d")));
        start.Date = lt.Date;
        ASPxGridView1.AutoGenerateColumns = true;
        ASPxGridView1.Columns.Clear();
        SqlDataSource1.SelectCommand = getsqlcentence() + " WHERE DATEDIFF(week, 时间, GETDATE()) =0 ";
        ASPxGridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        end.Date = dt;
        start.Date = dt.Date;
        ASPxGridView1.AutoGenerateColumns = true;
        ASPxGridView1.Columns.Clear();
        SqlDataSource1.SelectCommand = getsqlcentence() + " WHERE DATEDIFF(dd, 时间, GETDATE()) =0 ";
        ASPxGridView1.DataSourceID = "SqlDataSource1";
    }
    protected String getsqlcentence()
    {
        String head="";
        switch (this.Select2.Value)
        {
                
            case "空调主机用电":
                head = "select   [A相电压],[B相电压],[C相电压] ,[A相电流] ,[B相电流] ,[C相电流] ,[功率],[功率因数],[用电量],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间]  from  [空调主机用电] ";
                break;
            case "抽风机用电":
                head = "select  [电压],[电流],[功率],[功率因数],[用电量],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间]  from [抽风机用电]";
                break;
            case "饮水机用水":
                head = "select  [总水量],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间]  from [饮水机用水] ";
                break;
            case "洗手台用水":
                head = "select  [总水量], CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间] from [洗手台用水] ";
                break;
            case "办公室环境":
                head = "select   [CO2浓度],[温度1],[湿度1],[光照度1],[温度2],[湿度2],[光照度2],[粉尘],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间] from [办公室环境]";
                break;
            case "经理室环境":
                head = "select   [温度3],[湿度3],[光照度3],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间] from [办公室环境]";
                break;
            case "洗手间有害气体":
                head = "select  [CO2浓度],[NH3浓度],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间] from [洗手间有害气体]";
                break;
            case "报警记录":
                head = "select [报警设备],[报警类型],CONVERT(varchar(100), [时间], 23) as [日期]  , CONVERT(varchar(100), [时间], 24) as [时间] from [报警记录]";
                break;

            default:
                head = "";
                break;

        }
        return head;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button4_Click(this,e);
        this.ASPxGridViewExporter1.FileName = Select2.Value.ToString() ;
        this.ASPxGridViewExporter1.WriteXlsToResponse();//导出xls文件
    }
}