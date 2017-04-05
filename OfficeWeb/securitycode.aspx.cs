using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class securitycode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BuildCode();
    }

    private void BuildCode()
    {

        Color[] strcolor = { Color.Red, Color.Blue, Color.Brown, Color.Black, Color.Tomato };
        
        string[] strfont = { "华文中宋" };
        Random rands = new Random();
        Bitmap images = new Bitmap(80, 26);  //图片大小 
        Graphics g = Graphics.FromImage(images);
        Font f = new Font(strfont[0], 20); //字体大小 

        //笔刷填充色 
        Brush b = new SolidBrush(Color.Tomato);
        Brush b2 = new SolidBrush(strcolor[rands.Next(0, strcolor.Length)]);
        Brush b3 = new SolidBrush(Color.Red);
        Brush b4 = new SolidBrush(Color.FromArgb(128, Color.Green));
        g.Clear(Color.Wheat);

        //线条颜色 
        Pen p = new Pen(Color.Red, 0);
        Pen p2 = new Pen(Color.Turquoise, 0);
        Random rand = new Random();
        for (int i = 0; i < 40; i++)
        {
            int y = rand.Next(images.Height);
            int x = rand.Next(images.Width);
            //g.DrawLine(p, 0, y, images.Width, y); 
            g.DrawRectangle(p2, x, y, 1, 1);
        }

        g.DrawRectangle(p, 0, 0, images.Width - 1, images.Height - 1); //绘图区域 
        string strCode = rand.Next(1000, 10000).ToString();
        Session["yanzhencode"] = strCode;
        g.DrawString(strCode.Substring(0, 1), f, b, 2, -1);
        g.DrawString(strCode.Substring(1, 1), f, b2, 19, -1);
        g.DrawString(strCode.Substring(2, 1), f, b3, 37, -1);
        g.DrawString(strCode.Substring(3, 1), f, b4, 50, -1);
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        images.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        Response.ClearContent();
        Response.ContentType = "image/jpeg";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        images.Dispose();
    }
}