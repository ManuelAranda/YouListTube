using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YouListTube.Querys;

namespace YouListTube
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Group_Click(object sender, EventArgs e)
        {
            QueryGeneral cm = new QueryGeneral();
            //Console.WriteLine(cm.getConection("coldplay"));
            txtA_ListVideo.Value = cm.getConection(TextBox_Group.Text, 5);
        }
    }
}