using Microsoft.AspNet.SignalR.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormProject
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // sign up button is click
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //try
            //{
            //    //Take input from the controls
            //    //string full_name = TextBox1.Text;
            //    //DateTime age = Convert.ToInt32(TextBox2.Text);

            //    using (SqlConnection conn = new SqlConnection(strcon))
            //    {


            //        //create command object to pass the connection and other information
            //        SqlCommand cmd = new SqlCommand();
            //        cmd.Connection = con;

            //        //set command type as stored procedure
            //        cmd.CommandType = CommandType.StoredProcedure;

            //        //pass the stored procedure name
            //        cmd.CommandText = "SP_master_master_tbl";

            //        //pass the parameter to stored procedure

            //        cmd.Parameters.Add(new SqlParameter("@full_name", SqlDbType.VarChar)).Value = TextBox1.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@dob", SqlDbType.VarChar)).Value = TextBox2.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@contact_number", SqlDbType.VarChar)).Value = TextBox3.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = TextBox4.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@pincode", SqlDbType.VarChar)).Value = TextBox7.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@state", SqlDbType.VarChar)).Value = DropDownList1.SelectedItem.Value;
            //        cmd.Parameters.Add(new SqlParameter("@selectcity", SqlDbType.VarChar)).Value = TextBox6.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@full_address", SqlDbType.VarChar)).Value = TextBox5.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@create_user_id", SqlDbType.VarChar)).Value = TextBox8.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = TextBox9.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@confpassword", SqlDbType.VarChar)).Value = TextBox10.Text.Trim();
            //        cmd.Parameters.Add(new SqlParameter("@account_status", "pending"));

            //        //Execute the query
            //        int res = cmd.ExecuteNonQuery();
            //        con.Close();
            //        if (res > 0)
            //        {

            //            Response.Write("<script>alert('Sign up Successfull. Go to User Login to Login');</script>");


            //        }
            //        else
            //        {
            //            Response.Write("< script > alert('Data Not Inserted!!!! Try Again');</ script >");

            //        }
            //    }


            string _connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(_connStr))
            {
                using (SqlCommand comm = new SqlCommand())
                {
                    comm.Connection = conn;
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.CommandText = "SP_master_master_tbl";


                    comm.Parameters.Add(new SqlParameter("@full_name", SqlDbType.VarChar)).Value = TextBox1.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@dob", SqlDbType.VarChar)).Value = TextBox2.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@contact_number", SqlDbType.VarChar)).Value = TextBox3.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = TextBox4.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@pincode", SqlDbType.VarChar)).Value = TextBox7.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@state", SqlDbType.VarChar)).Value = DropDownList1.SelectedItem.Value;
                    comm.Parameters.Add(new SqlParameter("@selectcity", SqlDbType.VarChar)).Value = TextBox6.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@full_address", SqlDbType.VarChar)).Value = TextBox5.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@create_user_id", SqlDbType.VarChar)).Value = TextBox8.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = TextBox9.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@confpassword", SqlDbType.VarChar)).Value = TextBox10.Text.Trim();
                    comm.Parameters.Add(new SqlParameter("@account_status", "pending"));

                    Response.Write("<script>alert('Sign up Successfull. Go to User Login to Login');</script>");

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