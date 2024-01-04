using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class updateprog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_mostrar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
            lbl_mensagem.Text = "Bem-Vindo a um exemplo updateprogress";
        }
    }
}