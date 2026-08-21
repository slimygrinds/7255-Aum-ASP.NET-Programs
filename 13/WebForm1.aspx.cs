using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Grid_Show_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString =
            ConfigurationManager.ConnectionStrings[
                "StudentDBConnection"
            ].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            ShowData();
        }

        private void ShowData()
        {
            string query =
                "SELECT ID, Name FROM Student ORDER BY ID";

            try
            {
                using (SqlConnection con =
                    new SqlConnection(connectionString))
                {
                    using (SqlDataAdapter sda =
                        new SqlDataAdapter(query, con))
                    {
                        DataTable dt =
                            new DataTable();

                        sda.Fill(dt);

                        gvStudents.DataSource = dt;
                        gvStudents.DataBind();

                        if (dt.Rows.Count > 0)
                        {
                            lblMessage.Text =
                                "Student data displayed successfully.";
                        }
                        else
                        {
                            lblMessage.Text =
                                "No records found.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Error: " + ex.Message;
            }
        }

        protected void gvStudents_RowEditing(
            object sender,
            GridViewEditEventArgs e)
        {
            gvStudents.EditIndex =
                e.NewEditIndex;

            ShowData();
        }

        protected void gvStudents_RowCancelingEdit(
            object sender,
            GridViewCancelEditEventArgs e)
        {
            gvStudents.EditIndex = -1;

            ShowData();
        }

        protected void gvStudents_RowUpdating(
            object sender,
            GridViewUpdateEventArgs e)
        {
            int id =
                Convert.ToInt32(
                    gvStudents.DataKeys[e.RowIndex].Value);

            GridViewRow row =
                gvStudents.Rows[e.RowIndex];

            TextBox txtName =
                row.Cells[2].Controls[0] as TextBox;

            string name =
                txtName.Text.Trim();

            if (name == "")
            {
                lblMessage.Text =
                    "Please enter Name.";

                return;
            }

            string query =
                "UPDATE Student " +
                "SET Name = @Name " +
                "WHERE ID = @ID";

            try
            {
                using (SqlConnection con =
                    new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd =
                        new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue(
                            "@Name",
                            name);

                        cmd.Parameters.AddWithValue(
                            "@ID",
                            id);

                        con.Open();

                        cmd.ExecuteNonQuery();
                    }
                }

                gvStudents.EditIndex = -1;

                lblMessage.Text =
                    "Record updated successfully.";

                ShowData();
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Update Error: " + ex.Message;
            }
        }

        protected void gvStudents_RowDeleting(
            object sender,
            GridViewDeleteEventArgs e)
        {
            int id =
                Convert.ToInt32(
                    gvStudents.DataKeys[e.RowIndex].Value);

            string query =
                "DELETE FROM Student " +
                "WHERE ID = @ID";

            try
            {
                using (SqlConnection con =
                    new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd =
                        new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue(
                            "@ID",
                            id);

                        con.Open();

                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.Text =
                    "Record deleted successfully.";

                ShowData();
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Delete Error: " + ex.Message;
            }
        }
    }
}