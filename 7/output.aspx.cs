using System;
using System.Data;
using System.Data.SqlClient;

namespace databse_insertandselect
{
    public partial class output : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HARSH\source\repos\databse_insertandselect\databse_insertandselect\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayData();
            }
        }

        private void DisplayData()
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("Select * from [User]", con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;

            GridView1.DataBind();

            con.Close();
        }
    }
}