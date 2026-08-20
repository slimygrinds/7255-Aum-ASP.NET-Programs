<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Home.aspx.cs"
Inherits="_3_forms.Home" %>

<!DOCTYPE html>

<html>

<head runat="server">

<title>Home</title>

</head>

<body>

<form runat="server">

<center>

<h2>

Welcome

<asp:Label
ID="lblUser"
runat="server"></asp:Label>

</h2>

<br />

<asp:Button
ID="btnLogout"
runat="server"
Text="Logout"
OnClick="btnLogout_Click"/>

</center>

</form>

</body>

</html>