using System;
using System.Configuration;
using System.Data.SqlClient;

namespace _3_forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(
            "insert into Users(Name,Email,Username,Password) values(@n,@e,@u,@p)", con);

            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@u", txtUser.Text);
            cmd.Parameters.AddWithValue("@p", txtPass.Text);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMsg.Text = "Registration Successful";
        }
    }
}