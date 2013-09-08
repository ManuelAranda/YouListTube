using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YouListTube.Conexion;
using System.Net;

namespace YouListTube.Querys
{
    public class QueryGeneral : ConexionManager
    {
        public String getConection(String str, int maxResult)
        {
            WebClient client = new WebClient();
            string reply = client.DownloadString("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults="
                + maxResult + "&q=" + str + "&type=music&key=" + Key);
            return reply;            
        }
    }
}