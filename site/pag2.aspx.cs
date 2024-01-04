using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class pag2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl_distrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_concelho.Items.Clear();

            if(ddl_distrito.SelectedItem.ToString() == "Lisboa")
            {
                ddl_concelho.Items.Add("Amadora");
                ddl_concelho.Items.Add("Odivelas");
            }
            else if (ddl_distrito.SelectedItem.ToString() == "Porto")
            {
                ddl_concelho.Items.Add("Matosinhos");
                ddl_concelho.Items.Add("Gondomar");
                ddl_concelho.Items.Add("Boavista");
            }
            else if (ddl_distrito.SelectedItem.ToString() == "Setubal")
            {
                ddl_concelho.Items.Add("Palmela");
                ddl_concelho.Items.Add("Almada");
                ddl_concelho.Items.Add("Barreiro");
            }

        }

        protected void cbl_hobbies_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void rbl_regime_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbl_regime.SelectedItem.ToString() == "Outro")
            {
                Panel1.Visible = true;
                tb_qual2.Enabled = true;
            }
            else
            {
                Panel1.Visible = false;
                tb_qual2.Enabled = false;
                tb_qual2.Text = String.Empty;
            }
        }
    }
}