using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentGrid
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string connectionString =
            ConfigurationManager
            .ConnectionStrings["StudentConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager
                .ConnectionStrings["StudentConnection"]
                .ConnectionString;

            SqlConnection con = new SqlConnection(cs);

            con.Open();

            Response.Write("SQL Server Connected Successfully");

            con.Close();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int age;

            if (txtStudentName.Text.Trim() == "")
            {
                lblMessage.Text = "Enter student name.";
                return;
            }

            if (!int.TryParse(txtAge.Text, out age))
            {
                lblMessage.Text = "Enter valid age.";
                return;
            }

            SqlConnection con =
                new SqlConnection(connectionString);

            string query =
                "INSERT INTO Student (StudentName, Age) " +
                "VALUES (@StudentName, @Age)";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@StudentName",
                txtStudentName.Text.Trim());

            cmd.Parameters.AddWithValue(
                "@Age",
                age);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            txtStudentID.Text = "";
            txtStudentName.Text = "";
            txtAge.Text = "";

            lblMessage.Text =
                "Record inserted successfully.";

            ShowData();
        }

        protected void GridView1_SelectedIndexChanged(
            object sender, EventArgs e)
        {
            txtStudentID.Text =
                GridView1.SelectedRow.Cells[1].Text;

            txtStudentName.Text =
                GridView1.SelectedRow.Cells[2].Text;

            txtAge.Text =
                GridView1.SelectedRow.Cells[3].Text;
        }
    }
}