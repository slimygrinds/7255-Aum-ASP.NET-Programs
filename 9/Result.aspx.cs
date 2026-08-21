using System;

namespace _2._3_withdata
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRoll.Text = Session["Roll"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblPer.Text = Session["Per"].ToString();
            lblGrade.Text = Session["Grade"].ToString();
            lblResult.Text = Session["Result"].ToString();
        }
    }
}