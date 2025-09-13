using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormProject
{
    public partial class WebForm3 : System.Web.UI.Page
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
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from master_master_tbl where create_user_id ='"+TextBox1.Text.Trim()+ "' AND password = '"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<script>alert('Login Successfull');</script>");
                        Session["username"] = reader.GetValue(8).ToString();
                        Session["password"] = reader.GetValue(9).ToString();
                        Session["fullname"] = reader.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = reader.GetValue(11).ToString();
                    }
                    Response.Redirect("webform2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }


            } catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
            
            
            
            // Response.Write("<script>alert('Button Click');</script>");
        }
    }
}