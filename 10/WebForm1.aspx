<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_2._5_with_data.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Billing Form</title>

    <style>
        table{
            margin:auto;
            margin-top:30px;
            border-collapse:collapse;
            width:450px;
        }

        td{
            border:1px solid black;
            padding:10px;
        }

        h2{
            text-align:center;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<h2>Billing Form</h2>

<table>

<tr>
<td>Bill No</td>
<td>
<asp:TextBox ID="txtBill" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Customer Name</td>
<td>
<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Select Item</td>
<td>
<asp:ListBox ID="lstItem" runat="server">
    <asp:ListItem Text="Pen - ₹100" Value="100"></asp:ListItem>
    <asp:ListItem Text="Pencil - ₹50" Value="50"></asp:ListItem>
    <asp:ListItem Text="Book - ₹30" Value="30"></asp:ListItem>
    <asp:ListItem Text="Bag - ₹200" Value="200"></asp:ListItem>
    <asp:ListItem Text="Notebook - ₹80" Value="80"></asp:ListItem>
</asp:ListBox>
</td>
</tr>

<tr>
<td>Quantity</td>
<td>
<asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Image</td>
<td>
<asp:Image ID="Image1" runat="server"
ImageUrl="~/Images/bill.png"
Height="100"
Width="100"/>
</td>
</tr>

<tr>
<td>Total</td>
<td>
<asp:Label ID="lblTotal" runat="server"
Font-Bold="true"></asp:Label>
</td>
</tr>

<tr>
<td colspan="2" align="center">

<asp:Button ID="btnSave"
runat="server"
Text="Save"
OnClick="btnSave_Click"/>

</td>
</tr>

</table>

</form>

</body>
</html>