<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterUser.master" AutoEventWireup="true" CodeFile="Presonalitytest.aspx.cs" Inherits="user_Presonalitytest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" Runat="Server">
    <link href="Styles/Quiz.css" rel="stylesheet"  type="Text/css"/>
    <script type="text/javascript" src="Scripts/count.js">
     
    </script> <br />
       
   <%-- <div class="container">--%>
    <br />
    <br />
        <asp:TextBox ID="txtScore" runat="server" visible="false">0</asp:TextBox>
            <h1 style="text-align: center; color: #990000" ><em>Personality Test</em></h1>
            <asp:Label ID="lblName" runat="server"  Text="UserName : " Font-Bold="True" Font-Italic="True" Font-Size="Large" ></asp:Label>
            &nbsp; 
            <asp:Label ID="lblScore" runat="server" visible="false" ForeColor="Green"  Text="Score : " ></asp:Label>
         
            <asp:Panel ID="Panel3" runat="server" Height="24px" Width="119px" style="left:928px; z-index: 106; position: absolute; top: 150px;">
       <span id="cd" style ="left:100px; color:red; font-size:20px; font:bold" ></span>
            </asp:Panel>
        <asp:Panel ID="panel1" runat="server" class="Question"> 
            
                      <asp:Label ID="lblQuestion" class="Question" runat="server"  Text="Label" ></asp:Label>
                  
                <asp:RadioButtonList ID="RblOption" runat="server"  class="Question" Style="z-index: 152; left: 11px;
                    position: absolute; top: 250px; width: 515px; height: 19px;" >
                   </asp:RadioButtonList>
            
                 
                <table class="Question" Style="z-index: 152; left: 35px;
                    position: absolute; top: 250px; width: 515px; height: 17px;">
                    <tr>
                        <td>Disagree_Strongly</td>
                    </tr>
                    <tr>
                        <td>Disagree_Litle</td>
                    </tr>
                    <tr>
                        <td>Neither_agree_nor_disagree</td>
                    </tr>
                    <tr>
                        <td>Agree_Litle</td>
                    </tr>
                    <tr>
                        <td>Agree_Strongly</td>
                    </tr>
                </table>
           
              

                      
        </asp:Panel>
      <%-- 
     <table align="center" width: "22%">
            <tr>
                <td>--%><asp:Button  runat="server"  class="nextbtn" Text="Next"  style="left:600px; z-index: 106; position: absolute; top: 370px"  ToolTip="Click Here to Take Next Question" ID="BunNext"  Font-Italic="True" OnClick="BunNext_Click"     />
       <%--</td>
            </tr>
        </table>--%>
           
</asp:Content>

