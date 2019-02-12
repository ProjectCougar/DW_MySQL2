using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace DW_MySQL2
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.GetDocs(Convert.ToString(txtDocType.Text));

        }

        private void GetDocs(string Document_Type)
        {
            string connectionString = "Server=DEMOSERVER2;Database=dwdata;Uid=dwadmin; Pwd=dwadmin";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("spSearchFileCabinets", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@doctype", Document_Type);
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }


                }

            }
        }
    }
}