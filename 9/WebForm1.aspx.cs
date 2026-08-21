using System;
using System.Configuration;
using System.Data.SqlClient;

namespace _2._3_withdata
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        ConfigurationManager.ConnectionStrings["db"].ConnectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            int s1 = Convert.ToInt32(txtS1.Text);
            int s2 = Convert.ToInt32(txtS2.Text);
            int s3 = Convert.ToInt32(txtS3.Text);
            int s4 = Convert.ToInt32(txtS4.Text);
            int s5 = Convert.ToInt32(txtS5.Text);

            int total = s1 + s2 + s3 + s4 + s5;

            double per = total / 5.0;

            string grade = "";
            string result = "";

            if (s1 < 35 || s2 < 35 || s3 < 35 || s4 < 35 || s5 < 35)
            {
                result = "Fail";
                grade = "-";
            }
            else
            {
                result = "Pass";

                if (per >= 80)
                    grade = "A+";
                else if (per >= 70)
                    grade = "A";
                else if (per >= 60)
                    grade = "B";
                else if (per >= 50)
                    grade = "C";
                else
                    grade = "D";
            }

            con.Open();

            SqlCommand cmd = new SqlCommand(
            "insert into Student values(@r,@n,@c,@sem,@e,@m,@s1,@s2,@s3,@s4,@s5,@t,@p,@g,@res)",
            con);

            cmd.Parameters.AddWithValue("@r", txtRoll.Text);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@c", ddlCourse.Text);
            cmd.Parameters.AddWithValue("@sem", ddlSem.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@m", txtMobile.Text);

            cmd.Parameters.AddWithValue("@s1", s1);
            cmd.Parameters.AddWithValue("@s2", s2);
            cmd.Parameters.AddWithValue("@s3", s3);
            cmd.Parameters.AddWithValue("@s4", s4);
            cmd.Parameters.AddWithValue("@s5", s5);

            cmd.Parameters.AddWithValue("@t", total);
            cmd.Parameters.AddWithValue("@p", per);
            cmd.Parameters.AddWithValue("@g", grade);
            cmd.Parameters.AddWithValue("@res", result);

            cmd.ExecuteNonQuery();

            con.Close();

            Session["Roll"] = txtRoll.Text;
            Session["Name"] = txtName.Text;
            Session["Per"] = per.ToString("0.00");
            Session["Grade"] = grade;
            Session["Result"] = result;

            Response.Redirect("Result.aspx");
        }
    }
}