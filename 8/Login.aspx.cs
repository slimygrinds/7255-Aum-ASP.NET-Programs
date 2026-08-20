using System;
using System.Configuration;
using System.Data.SqlClient;

namespace _3_forms
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(
            "select * from Users where Username=@u and Password=@p", con);

            cmd.Parameters.AddWithValue("@u", txtUser.Text);
            cmd.Parameters.AddWithValue("@p", txtPass.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["user"] = txtUser.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Login";
            }

            con.Close();
        }
    }
}