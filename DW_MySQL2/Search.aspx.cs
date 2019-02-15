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
            string connectionString = "Server=DEMOSERVER2;Database=dwdata;Uid=dwadmin; Pwd=dwadmin";
            using (MySqlConnection cn = new MySqlConnection(connectionString))

            {
                MySqlCommand cmd = new MySqlCommand("spSearchFileCabinets", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                if (txtPatientName.Text.Trim() != "")
                {
                    MySqlParameter param = new MySqlParameter
                        ("@name", txtPatientName.Text);
                    cmd.Parameters.Add(param);
                }

                if (txtAccountNumber.Text.Trim() != "")
                {
                    MySqlParameter param = new MySqlParameter
                        ("@account_num", txtAccountNumber.Text);
                    cmd.Parameters.Add(param);
                }
               
              
                

                cn.Open();
                MySqlDataReader rdr = cmd.ExecuteReader();
                gvSearchResults.DataSource = rdr;
                gvSearchResults.DataBind();
            }

            /* cmd.Parameters.Add(new MySqlParameter("@name", txtPatientName));
            cmd.Parameters.Add(new MySqlParameter("@account_num", txtAccountNumber));


            using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind(); */
        }


            }

        }
    
    
