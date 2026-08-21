<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="StudentGrid.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Student Records</title>

    <style>
        table.formTable {
            border-collapse: collapse;
            width: 500px;
        }

        table.formTable td {
            border: 1px solid black;
            padding: 10px;
        }

        .label {
            font-weight: bold;
            width: 150px;
        }

        .textbox {
            width: 250px;
        }

        .button {
            text-align: center;
        }

        .grid {
            margin-top: 20px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <h2>Student Records</h2>

    <table class="formTable">

        <tr>
            <td class="label">Student ID</td>
            <td>
                <asp:TextBox ID="txtStudentID"
                    runat="server"
                    CssClass="textbox"
                    ReadOnly="true"/>
            </td>
        </tr>

        <tr>
            <td class="label">Student Name</td>
            <td>
                <asp:TextBox ID="txtStudentName"
                    runat="server"
                    CssClass="textbox"/>
            </td>
        </tr>

        <tr>
            <td class="label">Age</td>
            <td>
                <asp:TextBox ID="txtAge"
                    runat="server"
                    CssClass="textbox"/>
            </td>
        </tr>

        <tr>
            <td colspan="2" class="button">

                <asp:Button ID="btnInsert"
                    runat="server"
                    Text="Insert Record"
                    OnClick="btnInsert_Click"/>

                &nbsp;

                <asp:Button ID="btnShow"
                    runat="server"
                    Text="Show Data"
                    OnClick="btnShow_Click"/>

            </td>
        </tr>

    </table>

    <br/>

    <asp:Label ID="lblMessage"
        runat="server"/>

    <div class="grid">

        <asp:GridView ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            AutoGenerateSelectButton="True"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

            <Columns>

                <asp:BoundField
                    DataField="ID"
                    HeaderText="Student ID"/>

                <asp:BoundField
                    DataField="StudentName"
                    HeaderText="Student Name"/>

                <asp:BoundField
                    DataField="Age"
                    HeaderText="Age"/>

            </Columns>

        </asp:GridView>

    </div>

</form>

</body>
</html>