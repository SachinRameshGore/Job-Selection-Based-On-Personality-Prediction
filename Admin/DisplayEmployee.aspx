<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="DisplayEmployee.aspx.cs" Inherits="Admin_DisplayEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="adminStyles/StyleSheet.css" rel="stylesheet" />
     <style type="text/css">
   
          .auto-style9 {
              text-align: center;
              color: white;
          }
         .auto-style10 {
             width: 40%;
         }
         .auto-style12 {
             text-align: right;
         }
         .auto-style13 {
             width: 100%;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  
   
    </br>
    </br>
    </br>
     <div  class="back">
        <h1 class="auto-style9"><em>Employee Details</em></h1>
    
       
    <%-- <table align="right" class="auto-style10">
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtsearch" placeholder="Type..." runat="server" class="searchbox" Width="125px"></asp:TextBox>
</td>
            <td><asp:Button ID="btnsearch" runat="server"  class="searchbtn"  Text="Button" /></td>
        </tr>
    </table>--%>
          <br />
          <br />
          <br />
          <table align="center" class="auto-style13">
              <tr>
                  <td> 

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Height="30px" Width="1060px"  DataKeyNames="Empid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Empid" HeaderText="Empid" InsertVisible="False" ReadOnly="True" SortExpression="Empid" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Empid] = @Empid" InsertCommand="INSERT INTO [Employee] ([EmpName], [mobileno], [Email], [Designation], [Salary], [City]) VALUES (@EmpName, @mobileno, @Email, @Designation, @Salary, @City)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [mobileno] = @mobileno, [Email] = @Email, [Designation] = @Designation, [Salary] = @Salary, [City] = @City WHERE [Empid] = @Empid">
            <DeleteParameters>
                <asp:Parameter Name="Empid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="mobileno" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="mobileno" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Empid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</td>
              </tr>
         </table>
          <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      
   
    </div>
        
</asp:Content>

