<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Login.aspx.cs"
Inherits="_3_forms.Login" %>

<!DOCTYPE html>

<html>

<head runat="server">

<title>Login</title>

</head>

<body>

<form runat="server">

<table border="1" align="center">

<tr>

<td>User Name</td>

<td>

<asp:TextBox ID="txtUser"
runat="server"></asp:TextBox>

</td>

</tr>

<tr>

<td>Password</td>

<td>

<asp:TextBox
ID="txtPass"
runat="server"
TextMode="Password"></asp:TextBox>

</td>

</tr>

<tr>

<td colspan="2" align="center">

<asp:Button
ID="btnLogin"
runat="server"
Text="Login"
OnClick="btnLogin_Click"/>

</td>

</tr>

<tr>

<td colspan="2">

<asp:Label
ID="lblMsg"
runat="server"
ForeColor="Red"></asp:Label>

</td>

</tr>

<tr>

<td colspan="2">

New User?

<asp:HyperLink
NavigateUrl="WebForm1.aspx"
runat="server">

Sign Up

</asp:HyperLink>

</td>

</tr>

</table>

</form>

</body>

</html>