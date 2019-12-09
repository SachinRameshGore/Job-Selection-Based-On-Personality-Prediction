<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProgrammingQuestions.aspx.cs" Inherits="Admin_AddProgrammingQuestions" %>

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
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            width: 298px;
              font-style: italic;
              color: #CC3300;
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
        .auto-style6 {
            text-align: center;
            font-weight: bold;
            font-style: italic;
            font-size: x-large;
            width: 298px;
            height: 35px;
              color: #CC3300;
          }
        .auto-style7 {
            height: 35px;
        }
        .auto-style8 {}
          .auto-style9 {
              text-align: center;
              color: white;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    </br>
     </br> 
    </br> 
    <div  class="back">
        <h1 class="auto-style9"><em>Add Programming Questions</em></h1>
    
       
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style3"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question</em></strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtQuestion"  Class="text"  runat="server" placeholder="Question...." TextMode="MultiLine" BorderColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 1</td>
            <td>
                <asp:TextBox ID="TxtOption1"  Class="text" placeholder=" Option1...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 2</td>
            <td>
                <asp:TextBox ID="TxtOption2" Class="text"  placeholder=" Option2...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 3</td>
            <td>&nbsp;<asp:TextBox ID="TxtOption3" Class="text"  placeholder=" Option3...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Option 4</td>
            <td>
                <asp:TextBox ID="TxtOption4" Class="text" placeholder=" Option4...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Correct Option</td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtCorrectOption" Class="text" placeholder=" CorrrectOption...." runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnadd"   runat="server"  style="margin-left: 190px; " Class ="loginbtn"  Height="42px" Text="Add" Width="150px" OnClick="btnadd_Click"   />
            </td>
            <td class="auto-style5">
               <asp:Button ID="btnCancle"   runat="server"  style="margin-left: 50px; " Class ="loginbtn"  Height="42px" Text="Cancle" Width="150px" OnClick="btnCancle_Click"   />
          </td>
        </tr>
    </table>
    </div>
        

</asp:Content>

