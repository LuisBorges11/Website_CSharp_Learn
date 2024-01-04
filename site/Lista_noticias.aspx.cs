using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace site
{
    public partial class Lista_noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto");
            Xml1.Document = url;
        }
    }
}