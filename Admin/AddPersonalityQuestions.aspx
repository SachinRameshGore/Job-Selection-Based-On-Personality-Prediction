<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddPersonalityQuestions.aspx.cs" Inherits="Admin_AddPersonalityQuestions" %>

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
        <h1 class="auto-style9"><em>Add Personality Questions</em></h1>
    
       
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style4"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question</em></strong></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtQuestion"  Class="text"  runat="server" placeholder="Question...." TextMode="MultiLine" BorderColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disagree Strongly</td>
            <td>
                <asp:TextBox ID="TxtOption1"  Class="text" placeholder=" Option1...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Disagree Litle</td>
            <td>
                <asp:TextBox ID="TxtOption2" Class="text"  placeholder=" Option2...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp; Neither agree nor disagree</td>
            <td>&nbsp;<asp:TextBox ID="TxtOption3" Class="text"  placeholder=" Option3...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Agree Litle</td>
            <td>
                <asp:TextBox ID="TxtOption4" Class="text" placeholder=" Option4...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agree Strongly</td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtCorrectOption" Class="text" placeholder=" Option5...." runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnadd"   runat="server"  style="margin-left: 190px; " Class ="loginbtn"  Height="42px" Text="Add" Width="150px" OnClick="btnadd_Click"    />
            </td>
            <td class="auto-style5">
               <asp:Button ID="btnCancle"   runat="server"  style="margin-left: 20px; ;" Class ="loginbtn"  Height="42px" Text="Cancle" Width="150px" OnClick="btnCancle_Click"    />
          </td>
        </tr>
    </table>
    </div>
        

</asp:Content>

