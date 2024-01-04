using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;

namespace site
{
    public partial class Lista_noticias_bd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "select * from noticias";

            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand(query, myConn);

            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);

            DataSet myDataSet = new DataSet();

            myAdapter.Fill(myDataSet);

            Xml1.DocumentContent = myDataSet.GetXml();
        }
    }
}