<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="Admin_AddEmployee" %>

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
        <h1 class="auto-style9"><em>Add Employee Details</em></h1>
    
       
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style4"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></strong><b>Employee Name</b></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEname"  Class="text"  runat="server" placeholder="Employee Name..." BorderColor="#FF3300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile Number</td>
            <td>
                <asp:TextBox ID="txtMno"  Class="text" placeholder=" Mobile Number...."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email ID</td>
            <td>
                <asp:TextBox ID="txtEmail" Class="text"  placeholder=" Email ID...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Designation</td>
            <td>&nbsp;<asp:TextBox ID="txtDesignation" Class="text"  placeholder=" Designation...." runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary</td>
            <td>
                <asp:TextBox ID="txtSalary" Class="text" placeholder=" Salary....."  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtCity" Class="text" placeholder="City...." runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnadd"   runat="server"  style="margin-left: 190px; " Class ="loginbtn"  Height="42px" Text="Add" Width="150px" OnClick="btnadd_Click"    />
            </td>
            <td class="auto-style5">
               <asp:Button ID="btnCancle"   runat="server"  style="margin-left: 20px; " Class ="loginbtn"  Height="42px" Text="Cancle" Width="150px" OnClick="btnCancle_Click"    />
          </td>
        </tr>
    </table>
    </div>
        

</asp:Content>

