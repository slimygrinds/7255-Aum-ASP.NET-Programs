using System;

namespace UNIT1
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Blog Page Successfully";
        }
    }
}