<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="Grid_Show_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Student Details</title>
</head>

<body>

<form id="form1" runat="server">

<div style="width:700px; margin:30px;">

    <h2>Student Details</h2>

    <asp:Button
        ID="btnShow"
        runat="server"
        Text="SHOW DATA"
        OnClick="btnShow_Click" />

    <br />
    <br />

    <asp:Label
        ID="lblMessage"
        runat="server">
    </asp:Label>

    <br />
    <br />

    <asp:GridView
        ID="gvStudents"
        runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="ID"
        BorderWidth="1"
        GridLines="Both"
        CellPadding="8"
        OnRowEditing="gvStudents_RowEditing"
        OnRowUpdating="gvStudents_RowUpdating"
        OnRowCancelingEdit="gvStudents_RowCancelingEdit"
        OnRowDeleting="gvStudents_RowDeleting">

        <Columns>

            <asp:CommandField
                ShowEditButton="True"
                HeaderText="" />

            <asp:BoundField
                DataField="ID"
                HeaderText="ID"
                ReadOnly="True" />

            <asp:BoundField
                DataField="Name"
                HeaderText="Name" />

            <asp:CommandField
                ShowDeleteButton="True"
                HeaderText="" />

        </Columns>

    </asp:GridView>

</div>

</form>

</body>

</html>