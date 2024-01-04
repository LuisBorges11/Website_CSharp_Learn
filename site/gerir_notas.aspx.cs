using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class gerir_notas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView dr = (DataRowView)e.Item.DataItem;

                ((Label)e.Item.FindControl("lbl_cod")).Text = dr["cod_avaliacao"].ToString();

                ((TextBox)e.Item.FindControl("tb_formando")).Text = dr["formando"].ToString();

                ((TextBox)e.Item.FindControl("tb_modulo")).Text = dr["modulo"].ToString();

                ((TextBox)e.Item.FindControl("tb_nota")).Text = dr["nota"].ToString();

                ((ImageButton)e.Item.FindControl("btn_grava")).CommandArgument = dr["cod_avaliacao"].ToString();

            }


        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string query = "UPDATE avaliacoes SET";

                SqlConnection myConn = new SqlConnection
             (ConfigurationManager.ConnectionStrings
             ["atec_cas-pachecoConnectionString"].ConnectionString);

            myConn.Open();

            if (e.CommandName.Equals("btn_grava"))
            {
                query += "formando='" + ((TextBox)e.Item.FindControl("tb_formando")).Text +"',";

                query += "modulo='" + ((TextBox)e.Item.FindControl("tb_modulo")).Text + "',";

                query += "nota=" + ((TextBox)e.Item.FindControl("tb_nota")).Text;

                query += "WHERE cod_avaliacao=" + ((ImageButton)e.Item.FindControl("btn_grava")).CommandArgument;


                SqlCommand myCommand = new SqlCommand(query, myConn);
                myCommand.ExecuteNonQuery();
                myConn.Close();
            }


          
        }

        protected void img_saveAll_Click(object sender, ImageClickEventArgs e)
        {
            string query = "";

            SqlConnection myConn = new SqlConnection
         (ConfigurationManager.ConnectionStrings
         ["atec_cas-pachecoConnectionString"].ConnectionString);

            myConn.Open();

            for(int i=0; i < Repeater1.Items.Count; i++)
            {
                query += "update avaliacoes set";
                query += "formando='" + ((TextBox)Repeater1.Items[i].FindControl("tb_formando")).Text +"',";
                query += "modulo='" + ((TextBox)Repeater1.Items[i].FindControl("tb_modulo")).Text + "',";
                query += "nota=parse(" + ((TextBox)Repeater1.Items[i].FindControl("tb_nota")).Text + "' as numeric(4,2) using 'PT-pt') ";

                query += "where cod_avaliacao=" + ((Label)Repeater1.Items[i].FindControl("lbl_cod")).Text + ";";
            }

            SqlCommand myCommand = new SqlCommand(query, myConn);
            myCommand.ExecuteNonQuery();
            myConn.Close();
        }
    }
}