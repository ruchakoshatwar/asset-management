using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormProject
{
    public partial class FORM1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null && Session["password"] == null)
            {
                Response.Redirect("userlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            submitRequestForm();
        }

        void submitRequestForm()
        {
            string _connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(_connStr))
            {
                using (SqlCommand comm = new SqlCommand())
                {
                    comm.Connection = conn;
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.CommandText = "SP_Request_Form";


                    comm.Parameters.AddWithValue("@StaffNo", SqlDbType.VarChar).Value = TextBox1.Text.Trim();
                    comm.Parameters.AddWithValue("@FullName", SqlDbType.VarChar).Value = TextBox11.Text.Trim();
                    comm.Parameters.AddWithValue("@ContactNo", SqlDbType.VarChar).Value = TextBox3.Text.Trim();
                    comm.Parameters.AddWithValue("@EmailID", SqlDbType.VarChar).Value = TextBox4.Text.Trim();
                    comm.Parameters.AddWithValue("@Designation", SqlDbType.VarChar).Value = TextBox21.Text.Trim();
                    comm.Parameters.AddWithValue("@Location", SqlDbType.VarChar).Value = TextBox19.Text.Trim();
                    comm.Parameters.AddWithValue("@Quantity", SqlDbType.VarChar).Value = TextBox20.Text.Trim();
                    comm.Parameters.AddWithValue("@Department", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Value;
                    comm.Parameters.AddWithValue("@City", SqlDbType.VarChar).Value = TextBox6.Text.Trim();
                    comm.Parameters.AddWithValue("@Pincode", SqlDbType.VarChar).Value = TextBox7.Text.Trim();
                    comm.Parameters.AddWithValue("@Description_of_Material", SqlDbType.VarChar).Value = TextBox5.Text.Trim();


                    Response.Write("<script>alert('Your Form is Submitted.');</script>");
                    try
                    {
                        conn.Open();
                        comm.ExecuteNonQuery();

                    }
                    catch (SqlException ex)
                    {
                        // other codes here
                        // do something with the exception
                        // don't swallow it.
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }

            }
        }

    } 
}
 