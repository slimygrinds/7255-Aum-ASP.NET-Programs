<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>

    <style>
        .calculator {
            width: 400px;
            margin: 100px auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-family: Arial;
        }

        .calculator h2 {
            text-align: center;
        }

        .box {
            width: 95%;
            padding: 8px;
            margin-bottom: 15px;
        }

        .calculate {
            padding: 10px 25px;
            margin-top: 15px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="calculator">

        <h2>Calculator</h2>

        <asp:Label ID="Label1" runat="server"
            Text="Enter First Number:">
        </asp:Label>

        <br />

        <asp:TextBox ID="txtNum1" runat="server"
            CssClass="box">
        </asp:TextBox>

        <br />

        <asp:Label ID="Label2" runat="server"
            Text="Enter Second Number:">
        </asp:Label>

        <br />

        <asp:TextBox ID="txtNum2" runat="server"
            CssClass="box">
        </asp:TextBox>

        <br />

        <asp:Label ID="Label3" runat="server"
            Text="Select Operation:">
        </asp:Label>

        <br /><br />

        <asp:RadioButton ID="rbAdd" runat="server"
            Text="Addition (+)"
            GroupName="Operation" />

        <br />

        <asp:RadioButton ID="rbSub" runat="server"
            Text="Subtraction (-)"
            GroupName="Operation" />

        <br />

        <asp:RadioButton ID="rbMul" runat="server"
            Text="Multiplication (*)"
            GroupName="Operation" />

        <br />

        <asp:RadioButton ID="rbDiv" runat="server"
            Text="Division (/)"
            GroupName="Operation" />

        <br /><br />

        <asp:Button ID="btnCalculate"
            runat="server"
            Text="Calculate"
            CssClass="calculate"
            OnClick="btnCalculate_Click" />

        <br /><br />

        <asp:Label ID="Label4" runat="server"
            Text="Result:">
        </asp:Label>

        <br />

        <asp:TextBox ID="txtResult" runat="server"
            CssClass="box"
            ReadOnly="true">
        </asp:TextBox>

    </div>

</form>

</body>
</html>