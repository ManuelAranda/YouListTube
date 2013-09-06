using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YouListTube.Conexion
{
    public class ConexionManager
    {
        private String _key = "AIzaSyDR49L-biOblkCkiVuNHdA-i2ALGaRnmGc";

        public ConexionManager(){}

        public String Key
        {
            get { return _key; }
        }        
    }
}