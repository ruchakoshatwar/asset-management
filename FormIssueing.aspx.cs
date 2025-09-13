using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FormProject
{
    public partial class FormIssueing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        // issue
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        // return
        protected void Button4_Click(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from master_master_tbl where create_user_id ='" + TextBox1.Text.Trim() + "' AND password = '" + TextBox2.Text.Trim() + "'", con);
            }
            catch(Exception ex)
            {

            } 
        }

        
    }
}