<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewJob.aspx.cs" Inherits="Admin_ViewJob" %>

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
        <h1 class="auto-style9"><em>JOB Details</em></h1>
    
     <%--  
     <table align="right" class="auto-style10">
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

   <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC"  Height="30px" Width="1060px"  BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="JobId" DataSourceID="SqlDataSource1" ForeColor="Black">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="JobId" HeaderText="JobId" InsertVisible="False" ReadOnly="True" SortExpression="JobId" />
                 <asp:BoundField  DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                 <asp:BoundField  DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                 <asp:BoundField  DataField="Place" HeaderText="Place" SortExpression="Place" />
                 <asp:BoundField  DataField="Vacancy" HeaderText="Vacancy" SortExpression="Vacancy" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
     
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
            DeleteCommand="DELETE FROM [Job] WHERE [JobId] = @JobId" 
            InsertCommand="INSERT INTO [Job] ([Designation], [Salary], [Place], [Vacancy]) VALUES (@Designation, @Salary, @Place, @Vacancy)"
             UpdateCommand="UPDATE [Job] SET [Designation] = @Designation, [Salary] = @Salary, [Place] = @Place, [Vacancy] = @Vacancy WHERE [JobId] = @JobId" SelectCommand="SELECT * FROM [Job]">
            <DeleteParameters>
                <asp:Parameter Name="JobId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="Vacancy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="Vacancy" Type="String" />
                <asp:Parameter Name="JobId" Type="Int32" />
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

