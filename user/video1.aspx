<%@ Page Language="C#" AutoEventWireup="true" CodeFile="video1.aspx.cs" Inherits="video1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" ForeColor="#66FF33" Text="Job Selection Based On Personality Prediction"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="2" RepeatDirection="Horizontal">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                VideoName:
                <asp:Label ID="VideoNameLabel" runat="server" Text='<%# Eval("VideoName") %>' />
                <br />
                VideoLink:
                <asp:Label ID="VideoLinkLabel" runat="server" Text='<%# Eval("VideoLink") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [video]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
