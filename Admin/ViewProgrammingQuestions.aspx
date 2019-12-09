<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewProgrammingQuestions.aspx.cs" Inherits="Admin_ViewProgrammingQuestions" %>

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
        <h1 class="auto-style9"><em>Programming Questions</em></h1>
    
<%--       
     <table align="right" class="auto-style10">
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtsearch" placeholder="Type..." runat="server" class="searchbox" Width="125px"></asp:TextBox>
</td>
            <td><asp:Button ID="btnsearch" runat="server"  class="searchbtn"  Text="Button" /></td>
        </tr>--%>
    </table>
          <br />
          <br />
          <br />
          <table align="center" class="auto-style13">
              <tr>
                  <td> 

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"  Height="30px" Width="1060px"  BorderWidth="3px" CellPadding="4" DataKeyNames="Questionid" DataSourceID="SqlDataSource1" ForeColor="Black" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="Questionid" HeaderText="Questionid" InsertVisible="False" ReadOnly="True" SortExpression="Questionid" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Question1" HeaderText="Question1" SortExpression="Question1" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                <asp:BoundField ConvertEmptyStringToNull="false" DataField="Correct_option" HeaderText="Correct_option" SortExpression="Correct_option" />
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
             DeleteCommand="DELETE FROM [ProgrammingQuestions] WHERE [Questionid] = @Questionid"
             SelectCommand="SELECT * FROM [ProgrammingQuestions]"
             UpdateCommand="UPDATE [ProgrammingQuestions] SET [Question1] = @Question1, [Option1] = @Option1, [Option2] = @Option2, [Option3] = @Option3, [Option4] = @Option4, [Correct_option] = @Correct_option WHERE [Questionid] = @Questionid">
            <DeleteParameters>
                <asp:Parameter Name="Questionid" Type="Int32" />
            </DeleteParameters>
            
            <UpdateParameters>
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Question1" Type="String" />
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Option1" Type="String" />
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Option2" Type="String" />
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Option3" Type="String" />
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Option4" Type="String" />
                <asp:Parameter ConvertEmptyStringToNull="false" Name="Correct_option" Type="String" />
                <asp:Parameter Name="Questionid" Type="Int32" />
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

