<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="addVideo.aspx.cs" Inherits="Admin_addVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="adminStyles/StyleSheet.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
   
        .auto-style1 {
            width: 70%;
            /*border: 1px solid #FF9933;*/
            /*background-color: antiquewhite;*/
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style4 {
              text-align: center;
              font-weight: bold;
              font-style: italic;
              font-size: x-large;
              width: 298px;
              color: #CC3300;
          }
        .auto-style5 {
            text-align: left;
        }
          .auto-style9 {
              text-align: center;
              color: white;
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
        <%--    <%-- <h1 class="auto-style9"><em>Add Employee Details</em></h1>--%>
    
        <h1 class="auto-style9"><em>Add Video Details</em></h1>
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style4"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Video Name</em></strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1"  Class="text"  runat="server" placeholder="Video Name..." BorderColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Video Link</td>
            <td>
                <asp:TextBox ID="TextBox2"  Class="text" placeholder=" Video Link...."  runat="server"></asp:TextBox>
            </td>
        </tr>
               
          <br />
    <br />  <br />
    <br />
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnadd"   runat="server"  style="margin-left: 190px; " Class ="loginbtn"  Height="42px" Text="Add" Width="150px" OnClick="btnadd_Click"     />
            </td>
            <td class="auto-style5">
               <asp:Button ID="btnCancle"   runat="server"  style="margin-left: 20px; " Class ="loginbtn"  Height="42px" Text="Cancle" Width="150px" OnClick="btnCancle_Click"     />
          </td>
        </tr>
    </table>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
         <table align="center" class="auto-style13">
              <tr>
                  <td> 
                      <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC"  BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" Height="300px" RepeatColumns="2" RepeatDirection="Horizontal" Width="439px" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                VideoName:
                <asp:Label ID="VideoNameLabel" runat="server" Text='<%# Eval("VideoName") %>' />
                <br />
                VideoLink:
                <asp:Label ID="VideoLinkLabel" runat="server" Text='<%# Eval("VideoLink") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [video]"></asp:SqlDataSource>
  
                      </td>
              </tr>
         </table>

    </div>
        <br />
    <br />
</asp:Content>

