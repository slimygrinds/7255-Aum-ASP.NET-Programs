<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="WebForm1.aspx.cs"
Inherits="_2._3_withdata.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Student Marksheet</title>

<style>

body{
font-family:Arial;
background:#f5f5f5;
}

table{
margin:auto;
margin-top:20px;
background:white;
padding:20px;
box-shadow:0 0 10px gray;
}

td{
padding:8px;
}

</style>

</head>

<body>

<form id="form1" runat="server">

<table>

<tr>
<td colspan="2" align="center">
<h2>Student Marksheet</h2>
</td>
</tr>

<tr>
<td>Roll No</td>
<td>
<asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"
ControlToValidate="txtRoll"
ErrorMessage="*" ForeColor="Red"/>
</td>
</tr>

<tr>
<td>Name</td>
<td>
<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"
ControlToValidate="txtName"
ErrorMessage="*" ForeColor="Red"/>
</td>
</tr>

<tr>
<td>Course</td>
<td>
<asp:DropDownList ID="ddlCourse" runat="server">
<asp:ListItem>BCA</asp:ListItem>
<asp:ListItem>BBA</asp:ListItem>
<asp:ListItem>BCom</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Semester</td>
<td>
<asp:DropDownList ID="ddlSem" runat="server">
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
<asp:ListItem>6</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Email</td>
<td>

<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

<asp:RegularExpressionValidator
runat="server"
ControlToValidate="txtEmail"
ValidationExpression="\w+([-.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"
ForeColor="Red"/>

</td>
</tr>

<tr>
<td>Mobile</td>
<td>

<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

<asp:RegularExpressionValidator
runat="server"
ControlToValidate="txtMobile"
ValidationExpression="[0-9]{10}"
ErrorMessage="Invalid Mobile"
ForeColor="Red"/>

</td>
</tr>

<tr><td>Subject1</td>
<td><asp:TextBox ID="txtS1" runat="server"></asp:TextBox></td></tr>

<tr><td>Subject2</td>
<td><asp:TextBox ID="txtS2" runat="server"></asp:TextBox></td></tr>

<tr><td>Subject3</td>
<td><asp:TextBox ID="txtS3" runat="server"></asp:TextBox></td></tr>

<tr><td>Subject4</td>
<td><asp:TextBox ID="txtS4" runat="server"></asp:TextBox></td></tr>

<tr><td>Subject5</td>
<td><asp:TextBox ID="txtS5" runat="server"></asp:TextBox></td></tr>

<tr>

<td colspan="2" align="center">

<asp:Button ID="Button1"
runat="server"
Text="Submit"
OnClick="Button1_Click"/>

</td>

</tr>

</table>

</form>

</body>
</html>