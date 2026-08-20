using System;
using System.Data.SqlClient;

namespace databse_insertandselect
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HARSH\source\repos\databse_insertandselect\databse_insertandselect\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("Insert into [User](Username,Password) values(@Username,@Password)", con);

            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Record Saved Successfully";

            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            lblMessage.Text = "";
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("output.aspx");
        }
    }
}