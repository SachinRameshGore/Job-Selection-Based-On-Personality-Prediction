<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Admin_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="adminStyles/StyleSheet.css" rel="stylesheet" />
   
    <style type="text/css">
        .user {
            width: 150px;
	height: 200px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 200px;
	left: 100px;
    
	position: absolute;
	transform: translate(200%,-40%);
	box-sizing: border-box;
    border-radius: 55px;
	padding:70px 30px;

        }
        .software {
             
            width: 150px;
	height: 200px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 200px;
	left: 100px;
    
	position: absolute;
	transform: translate(350%,-40%);
	box-sizing: border-box;
    border-radius: 55px;
	padding:70px 30px;

        
       
        }
        .test {
            width: 150px;
	height: 200px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 200px;
	left: 100px;
    
	position: absolute;
	transform: translate(500%,-40%);
	box-sizing: border-box;
    border-radius: 55px;
	padding:70px 30px;

        }
        .auto-style1 {
            background:rgb(255, 106, 0);
            border-radius:21px;
            width: 40%;
            height: 100%;
            border-style: solid;
            border-width: 1px;
            transform:translateX(30%) translateY(-30%);
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
     <div  class="back">
  <asp:Panel ID="panel1" runat="server" class="user">
      <asp:Label ID="softwareJob" runat="server" Text=" Total Employees"></asp:Label><br />
      <asp:Label ID="soft" runat="server" ></asp:Label>

  </asp:Panel>
         <asp:Panel ID="panel2" runat="server" class="software">
      <asp:Label ID="Label1" runat="server" Text="System Developer"></asp:Label><br />
      <asp:Label ID="softvacancy" runat="server" ></asp:Label>

  </asp:Panel>
          
         <asp:Panel ID="panel3" runat="server" class="test">
      <asp:Label ID="Label2" runat="server" Text="Testing"></asp:Label><br />
      <asp:Label ID="test" runat="server" ></asp:Label>

  </asp:Panel>
<%--    <table align="left" cellpadding="4" class="auto-style1">
        <tr>
            <td>
                
            </td>
        </tr>
        
    </table>--%>
</div>
</asp:Content>

