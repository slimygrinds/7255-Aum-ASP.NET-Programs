<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="databse_insertandselect.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>

    <style>
        body{
            font-family:Arial;
            background:#f2f2f2;
        }

        .box{
            width:400px;
            margin:auto;
            margin-top:100px;
            border:1px solid gray;
            padding:20px;
            background:white;
        }

        table{
            width:100%;
        }

        td{
            padding:10px;
        }

        .btn{
            width:100px;
            height:35px;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 align="center">Login Form</h2>

<table border="1">

<tr>
<td>Username</td>

<td>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
</td>

</tr>

<tr>

<td>Password</td>

<td>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
</td>

</tr>

<tr>

<td colspan="2" align="center">

<asp:Button ID="btnSave"
runat="server"
Text="Save"
CssClass="btn"
OnClick="btnSave_Click" />

&nbsp;

<asp:Button ID="btnClear"
runat="server"
Text="Clear"
CssClass="btn"
OnClick="btnClear_Click" />

&nbsp;

<asp:Button ID="btnDisplay"
runat="server"
Text="Display Data"
CssClass="btn"
OnClick="btnDisplay_Click" />

</td>

</tr>

<tr>

<td colspan="2" align="center">

<asp:Label ID="lblMessage"
runat="server"
ForeColor="Green"></asp:Label>

</td>

</tr>

</table>

</div>

</form>

</body>
</html>