using System;

namespace test_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double num1;
            double num2;
            double result = 0;

            if (!double.TryParse(txtNum1.Text, out num1) ||
                !double.TryParse(txtNum2.Text, out num2))
            {
                txtResult.Text = "Enter valid numbers";
                return;
            }

            if (rbAdd.Checked)
            {
                result = num1 + num2;
            }
            else if (rbSub.Checked)
            {
                result = num1 - num2;
            }
            else if (rbMul.Checked)
            {
                result = num1 * num2;
            }
            else if (rbDiv.Checked)
            {
                if (num2 == 0)
                {
                    txtResult.Text = "Cannot divide by zero";
                    return;
                }

                result = num1 / num2;
            }
            else
            {
                txtResult.Text = "Select an operation";
                return;
            }

            txtResult.Text = result.ToString();
        }
    }
}