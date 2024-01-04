using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace site
{
    public partial class Ler_imagem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl_nome_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void bt_fachada_Click(object sender, EventArgs e)
        {
            
            SqlConnection myConn = new SqlConnection
          (ConfigurationManager.ConnectionStrings
          ["atec_cas-pachecoConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "Ler_imagem";

            myCommand.Connection = myConn;

            myCommand.Parameters.AddWithValue("@idImagem", ddl_nome.SelectedValue);


            myConn.Open();
            SqlDataReader dr = myCommand.ExecuteReader();

            if (dr.Read())
            {
                Response.ContentType = dr["contenttype"].ToString();
                Response.BinaryWrite((byte[])dr["dados"]);
            }


            myConn.Close();
        }
    }
}