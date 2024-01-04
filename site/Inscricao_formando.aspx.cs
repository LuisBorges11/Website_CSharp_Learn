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
    public partial class Inscricao_formando : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_registo_Click(object sender, EventArgs e)
        {

            Stream imgStream = FileUpload1.PostedFile.InputStream;
            int imgTamanho = FileUpload1.PostedFile.ContentLength;

            string contenttype = FileUpload1.PostedFile.ContentType;

            byte[] imgBinary = new byte[imgTamanho];

            imgStream.Read(imgBinary, 0, imgTamanho);

            SqlConnection myConn = new SqlConnection
          (ConfigurationManager.ConnectionStrings
          ["atec_cas-pachecoConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "Inscricao_formando";

            myCommand.Connection = myConn;

            myCommand.Parameters.AddWithValue("@nome", tb_nome.Text);
            myCommand.Parameters.AddWithValue("@email", tb_email.Text);
            myCommand.Parameters.AddWithValue("@ct", contenttype);
            myCommand.Parameters.AddWithValue("@binarios", imgBinary);
            myCommand.Parameters.AddWithValue("@cv", tb_cv.Text);




            myConn.Open();
            myCommand.ExecuteNonQuery();
            myConn.Close();
        }
    }
}