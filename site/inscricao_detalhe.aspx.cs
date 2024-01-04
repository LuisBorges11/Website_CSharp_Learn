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
    public partial class inscricao_detalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_mostrar_Click(object sender, EventArgs e)
        {
            
            SqlConnection myConn = new SqlConnection
          (ConfigurationManager.ConnectionStrings
          ["atec_cas-pachecoConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "inscricao_detalhe";

            myCommand.Connection = myConn;

            myCommand.Parameters.AddWithValue("@nom", ddl_formando.SelectedValue);



            myConn.Open();
            SqlDataReader dr =  myCommand.ExecuteReader();
           

            if (dr.Read())
            {
                lbl_nome.Text = dr["nome"].ToString();
                lbl_email.Text = dr["email"].ToString();
                img_foto.ImageUrl = "data:image/jpeg;base64," + 
                    Convert.ToBase64String((byte[])dr["foto"]);
                lt_cv.Text = dr["cv"].ToString();
            } 
            
            myConn.Close();
        }
    }
}