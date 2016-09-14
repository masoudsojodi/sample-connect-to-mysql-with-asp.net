<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="GridView11"></asp:GridView>

        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
<Columns>
    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Country" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("email") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
</Columns>
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    <td style="width: 150px">
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Country:<br />
        <asp:TextBox ID="txtCountry" runat="server" Width="140" />
    </td>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>
    </form>
</body>
</html>
