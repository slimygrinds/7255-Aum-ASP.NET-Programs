<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="UNIT1.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog Page</title>
</head>
<body>

<form id="form1" runat="server">

    <center>
        <h2>Simple Blog Page</h2>

        <table border="1" cellpadding="10">

            <tr>
                <td>Title</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Author</td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Blog Content</td>
                <td>
                    <asp:TextBox ID="txtContent" runat="server"
                        TextMode="MultiLine"
                        Rows="5"
                        Columns="30"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnPost" runat="server"
                        Text="Post Blog"
                        OnClick="btnPost_Click" />
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>

        </table>

    </center>

</form>

</body>
</html>