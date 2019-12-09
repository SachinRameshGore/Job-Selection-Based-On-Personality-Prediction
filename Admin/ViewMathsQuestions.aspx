<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewMathsQuestions.aspx.cs" Inherits="Admin_ViewMathsQuestions" %>

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
        <h1 class="auto-style9"><em>Aptitude Questions</em></h1>
    
       
 <%--    <table align="right" class="auto-style10">
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

  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"  Height="30px" Width="1060px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" InsertVisible="False" ReadOnly="True" SortExpression="QuestionId" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="Option1" HeaderText="Option1" SortExpression="Option1" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="Option2" HeaderText="Option2" SortExpression="Option2" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="Option3" HeaderText="Option3" SortExpression="Option3" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="Option4" HeaderText="Option4" SortExpression="Option4" />
                <asp:BoundField  ConvertEmptyStringToNull="false" DataField="CorrectOption" HeaderText="CorrectOption" SortExpression="CorrectOption" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
            DeleteCommand="DELETE FROM [MathsQuestion] WHERE [QuestionId] = @QuestionId"
            SelectCommand="SELECT * FROM [MathsQuestion]"
             UpdateCommand="UPDATE [MathsQuestion] SET [Question] = @Question, [Option1] = @Option1, [Option2] = @Option2, [Option3] = @Option3, [Option4] = @Option4, [CorrectOption] = @CorrectOption WHERE [QuestionId] = @QuestionId" InsertCommand="INSERT INTO [MathsQuestion] ([Question], [Option1], [Option2], [Option3], [Option4], [CorrectOption]) VALUES (@Question, @Option1, @Option2, @Option3, @Option4, @CorrectOption)">
            <DeleteParameters>
                <asp:Parameter Name="QuestionId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Option1" Type="String" />
                <asp:Parameter Name="Option2" Type="String" />
                <asp:Parameter Name="Option3" Type="String" />
                <asp:Parameter Name="Option4" Type="String" />
                <asp:Parameter Name="CorrectOption" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="Question" Type="String" />
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="Option1" Type="String" />
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="Option2" Type="String" />
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="Option3" Type="String" />
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="Option4" Type="String" />
                <asp:Parameter  ConvertEmptyStringToNull="false" Name="CorrectOption" Type="String" />
                <asp:Parameter Name="QuestionId" Type="Int32" />
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

