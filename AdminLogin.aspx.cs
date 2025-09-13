using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace FormProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin_login_tbl where username ='" + TextBox1.Text.Trim() + "' AND password = '" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        // Response.Write("<script>alert('" + reader.GetValue(0).ToString() + "');</script>");
                        Session["username"] = reader.GetValue(0).ToString();
                        Session["fullname"] = reader.GetValue(2).ToString();
                        Session["role"] = "admin";
                        //Session["status"] = reader.GetValue(11).ToString();
                        Response.Redirect("webform2.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}