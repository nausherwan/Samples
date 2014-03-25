<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExcelToGridView._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Table ID="Table1" Width="800px" runat="server" BorderColor="#0099CC" 
            BorderStyle="Solid" BorderWidth="2px">
            <asp:TableRow runat="server" BorderColor="#0066CC" BorderStyle="Solid" 
                BorderWidth="2px">
                <asp:TableCell runat="server" Width="10%"></asp:TableCell>
                <asp:TableCell runat="server" Width="80%"> <asp:Label ID="Label1" runat="server" 
            Text="Import Data and Images from Excel to GridView using Aspose.Cells for .NET " BorderColor="#333300" 
            BorderStyle="Solid" ForeColor="White" BackColor="Black" Font-Bold="True" 
            Font-Size="Larger"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server" Width="10%"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BorderColor="#0066CC" BorderStyle="Solid" 
                BorderWidth="2px">
                <asp:TableCell runat="server" Width="10%"></asp:TableCell>
                <asp:TableCell runat="server" Width="80%">
                <asp:Button runat="server" id="UploadButton" text="Process Excel file" onclick="UploadButton_Click" />
                <br /><br />
                 <asp:Label runat="server" id="StatusLabel" text="Upload status: " /></asp:TableCell>
                <asp:TableCell runat="server" Width="10%"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BorderColor="#0066CC" BorderStyle="Solid" 
                BorderWidth="2px">
            <asp:TableCell runat="server" Width="10%"></asp:TableCell>
            <asp:TableCell runat="server" Width="80%">
            <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server"  
            EnableModelValidation="True" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Vertical" Width="100%" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID">
                </asp:BoundField>
                <asp:BoundField DataField="Customer" HeaderText="Customer">
                </asp:BoundField>
                <asp:BoundField DataField="Country" HeaderText="Country">
                </asp:BoundField>
                <asp:BoundField DataField="Product" HeaderText="Product">
                </asp:BoundField>
                <asp:TemplateField HeaderText="Product Logo">
                <ItemTemplate>
                <asp:Image id="image1" runat="server" ImageUrl=''/> 
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        </asp:TableCell>
        <asp:TableCell runat="server" Width="10%"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
