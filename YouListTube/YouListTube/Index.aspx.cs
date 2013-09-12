using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace YouListTube
{
    public partial class Index : System.Web.UI.Page
    {
        String id_video = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /*
        protected void Button_Group_Click(object sender, EventArgs e)
        {
            QueryGeneral cm = new QueryGeneral();
            String jsonString = cm.getConection(Txt_Input.Text, 3);
            String[] split = jsonString.Split(new string[] { "\"videoId\": \"" }, StringSplitOptions.None);
            String[] split_2 = split[1].Split(new string[] { "\"" }, StringSplitOptions.None);
            id_video = split_2[0];
            txtA_ListVideo.Value = id_video;
        }

        protected String GetVideo() {
            String str = "<iframe class=\"youtube-player\" type=\"text/html\" width=\"640\" height=\"385\" src=\"http://www.youtube.com/v/" + id_video +"&autoplay=1 frameborder=\"0\"></iframe>";
            return str;
        }*/
    }
}