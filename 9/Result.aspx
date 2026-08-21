<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Result.aspx.cs"
Inherits="_2._3_withdata.Result" %>

<!DOCTYPE html>

<html>

<head runat="server">
<title>Result</title>
</head>

<body>

<form runat="server">

<h2 align="center">Student Result</h2>

<table border="1" align="center">

<tr>
<td>Roll No</td>
<td><asp:Label ID="lblRoll" runat="server"/></td>
</tr>

<tr>
<td>Name</td>
<td><asp:Label ID="lblName" runat="server"/></td>
</tr>

<tr>
<td>Percentage</td>
<td><asp:Label ID="lblPer" runat="server"/></td>
</tr>

<tr>
<td>Grade</td>
<td><asp:Label ID="lblGrade" runat="server"/></td>
</tr>

<tr>
<td>Result</td>
<td><asp:Label ID="lblResult" runat="server"/></td>
</tr>

</table>

</form>

</body>
</html>