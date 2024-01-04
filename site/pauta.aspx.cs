using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;

namespace site
{
    public partial class pauta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<notas> lst_pauta = new List<notas>();

            string query = "SELECT formando, modulo,  nota from avaliacoes";

            SqlConnection myConn = new SqlConnection
          (ConfigurationManager.ConnectionStrings
          ["atec_cas-pachecoConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand(query, myConn);

            myConn.Open();

            var dr = myCommand.ExecuteReader();

            while (dr.Read())
            {
                var pauta_nota = new notas();

                pauta_nota.formando = dr.GetString(0);
                pauta_nota.modulo = dr.GetString(1);
                pauta_nota.nota = dr.GetDecimal(2);
                pauta_nota.estiloCSS = pauta_nota.nota < 10 ? "negativa " : "positiva";

                lst_pauta.Add(pauta_nota);
            }

            myConn.Close();
            rpt_notas.DataSource = lst_pauta;
            rpt_notas.DataBind();

        }

        public class notas
        {
            public string formando { get; set; }

            public string modulo { get; set; }

            public decimal nota { get; set; }

            public string estiloCSS { get; set; }

        }

        protected void rpt_notas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}