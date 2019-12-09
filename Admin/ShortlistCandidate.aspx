<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ShortlistCandidate.aspx.cs" Inherits="Admin_ShortlistCandidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="adminStyles/StyleSheet.css" rel="stylesheet" /> 
    <link href="adminStyles/search.css" rel="stylesheet" />  
    <style type="text/css">
   
          .auto-style9 {
              text-align: center;
              color: white;
          }
         .auto-style10 {
             width: 40%;
             transition: .5s;

         }
         .auto-style12 {
             text-align: right;
         }
         .auto-style13 {
             width: 100%;
         }
          .auto-style14 {
             width: 40%;
         }
           .btnmail 
        {
            border:none;
            outline:none;
            height:52px;
            width:250px;
           background-color: DodgerBlue;
            color:#fff;
            font-size:18px;
            border-radius:20px;
        }

        .btnmail:hover 
        {
            cursor:pointer;
           background-color: RoyalBlue;
            color:#000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
   
    </br>
    </br>
    </br>
     <div  class="back">
        <h1 class="auto-style9"><em>Shortlist Candidate</em></h1>
    
       
     <table align="right" class="auto-style10">
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="txtsearch" placeholder="Type..." runat="server" class="searchbtn" Width="125px"></asp:TextBox>
</td>
            <td><asp:Button ID="btnsearch" runat="server"  class="searchbox"  Text="Button" OnClick="btnsearch_Click" /></td>
        </tr>
    </table>
          <br />
          <br />
          <br />
          <table align="center" class="auto-style13">
              <tr>
                  <td> 

   
        <asp:GridView ID="gvRegistration" runat="server" AutoGenerateColumns="False" BackColor="White" Height="30px" Width="500px" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="RegistrationId" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RegistrationId" HeaderText="RegistrationId" InsertVisible="False" ReadOnly="True" SortExpression="RegistrationId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                  <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="ExamDate" HeaderText="ExamDate" SortExpression="ExamDate" />
                  <asp:BoundField DataField="AptitudeResult" HeaderText="AptitudeResult" SortExpression="AptitudeResult" />
                <asp:BoundField DataField="PersonalityResult" HeaderText="PersonalityResult" SortExpression="PersonalityResult" />
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
            </Columns>

            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

        </asp:GridView>
             <br />
           
       </td>
                  </tr>
              </table>
                      <table align="center" class="auto-style14">
              <tr>
                  <td> 

              <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE"   BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

             <br />
             <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
</td>
                  </tr>
              </table>
         
         <asp:Button ID="btnmail" class="btnmail" visible="false" runat="server" Text="Send mail" OnClick="btnmail_Click" />

    </div>
    </div>
</asp:Content>

