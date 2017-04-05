using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Sockets;
using System.Net;
using System.Threading;
using System.Text;
public partial class _Main : System.Web.UI.Page
{

    private static IPAddress GroupAddress = IPAddress.Parse("127.0.0.1");
    //private static int GroupPort = 8888;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

        Timer1.Interval = 5000;
            try
            {
                UdpClient udpClient = new UdpClient();
                //udpClient.ExclusiveAddressUse = false;
                //udpClient.Connect(GroupAddress, 8888);
                IPEndPoint des = new IPEndPoint(GroupAddress,8888);
                Byte[] sendBytes = Encoding.ASCII.GetBytes("ff#97#01#00");
                udpClient.Send(sendBytes, sendBytes.Length,des);
                IPEndPoint RemoteIpEndPoint = new IPEndPoint(IPAddress.Any, 0);
                Byte[] receiveBytes = udpClient.Receive(ref RemoteIpEndPoint);
                str  = Encoding.ASCII.GetString(receiveBytes);
                udpClient.Close();

            }
            catch 
            {
                
                return;
            }


        String[] value = new string[18];
        String temp;
        int index = 1;
        for (int i = 0; i < str.Length; i++)
        {
            if ((temp = str.Substring(i, 1)) == "@")
            {
                index++;
            }
            else
            {
                value[index] = value[index] + temp;
            }
        }
        air_elec.Text = value[1] + "Kw.h";
        wind_elec.Text = value[2] + "Kw.h";
        office_CO2.Text = value[3] + "ppm";
        office_tem1.Text = value[4] + "℃" + value[5] + "%";
        office_light.Text = value[6] + "lux";
        man_light.Text = value[7] + "lux";
        man_tem.Text = value[8] + "℃" + value[9] + "%";
        dust.Text = value[10] + "千粒/升";
        office_light1.Text = value[11] + "lux";
        office_tem2.Text = value[12] + "℃" + value[13] + "%";
        NH3.Text = value[14] + "LEL";
        toilet_CO2.Text = value[15] + "ppm";

        wash_water.Text = value[16] + "立方米";
        drink_water.Text = value[17] + "立方米";
        drink_water.Text = Request["money"];
        //((MasterPage)Master).sta = "当前系统正常;数据采集周期60秒";



    }

}