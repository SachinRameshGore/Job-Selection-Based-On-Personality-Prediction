<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewPersonalityQuestions.aspx.cs" Inherits="Admin_ViewPersonalityQuestions" %>

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
        <h1 class="auto-style9"><em>Personality Questions</em></h1>
    
       
   <%--  <table align="right" class="auto-style10">
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

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999"  Height="30px" Width="1060px"  BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="Question_id" DataSourceID="SqlDataSource1" ForeColor="Black" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Question_id" HeaderText="Question_id" InsertVisible="False" ReadOnly="True" SortExpression="Question_id" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Disagree_Strongly" HeaderText="Disagree_Strongly" SortExpression="Disagree_Strongly" />
                <asp:BoundField DataField="Disagree_Litle" HeaderText="Disagree_Litle" SortExpression="Disagree_Litle" />
                <asp:BoundField DataField="Neither_agree_nor_disagree" HeaderText="Neither_agree_nor_disagree" SortExpression="Neither_agree_nor_disagree" />
                <asp:BoundField DataField="Agree_Litle" HeaderText="Agree_Litle" SortExpression="Agree_Litle" />
                <asp:BoundField DataField="Agree_Strongly" HeaderText="Agree_Strongly" SortExpression="Agree_Strongly" />
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
             SelectCommand="SELECT * FROM [Personality_Question]">
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

