using System;
using System.Configuration;
using System.Data.SqlClient;

namespace _2._5_with_data
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int qty = Convert.ToInt32(txtQty.Text);
            double price = Convert.ToDouble(lstItem.SelectedValue);
            double total = qty * price;

            lblTotal.Text = "₹ " + total.ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand(
            "insert into Billing values(@b,@n,@i,@q,@p,@t)", con);

            cmd.Parameters.AddWithValue("@b", txtBill.Text);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@i", lstItem.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@q", qty);
            cmd.Parameters.AddWithValue("@p", price);
            cmd.Parameters.AddWithValue("@t", total);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Record Saved Successfully');</script>");
        }
    }
}