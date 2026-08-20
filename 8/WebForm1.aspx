<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="WebForm1.aspx.cs"
Inherits="_3_forms.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>Sign Up</title>

<style>

table{
margin:auto;
margin-top:80px;
border-collapse:collapse;
}

td{
padding:10px;
}

</style>

</head>

<body>

<form runat="server">

<table border="1">

<tr>

<td>Name</td>

<td>

<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

</td>

</tr>

<tr>

<td>Email</td>

<td>

<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

</td>

</tr>

<tr>

<td>User Name</td>

<td>

<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>

</td>

</tr>

<tr>

<td>Password</td>

<td>

<asp:TextBox ID="txtPass"
TextMode="Password"
runat="server"></asp:TextBox>

</td>

</tr>

<tr>

<td colspan="2" align="center">

<asp:Button ID="btnSave"
runat="server"
Text="Sign Up"
OnClick="btnSave_Click"/>

</td>

</tr>

<tr>

<td colspan="2">

<asp:Label ID="lblMsg"
runat="server"
ForeColor="Green"></asp:Label>

</td>

</tr>

<tr>

<td colspan="2">

Already have account?

<asp:HyperLink
NavigateUrl="Login.aspx"
runat="server">

Login

</asp:HyperLink>

</td>

</tr>

</table>

</form>

</body>

</html>