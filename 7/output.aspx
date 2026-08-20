<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="databse_insertandselect.output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<title>Display Records</title>

<style>

body{

font-family:Arial;
background:#f2f2f2;

}

.box{

width:700px;
margin:auto;
margin-top:40px;

}

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2>User Records</h2>

<asp:GridView ID="GridView1"
runat="server"
AutoGenerateColumns="true"
BorderStyle="Solid"
BorderWidth="1"
GridLines="Both">
</asp:GridView>

<br />

<asp:Button ID="btnBack"
runat="server"
Text="Back"
PostBackUrl="~/login.aspx"/>

</div>

</form>

</body>

</html>