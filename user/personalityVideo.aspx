<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personalityVideo.aspx.cs" Inherits="user_personalityVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        body {
            background: rgba(0, 0, 0, 0.1);
            /*background: url(bc.jpg);*/
             font-family: Arial;
              font-size: 17px;
               width : 100%;
        }
        .content {
   position: absolute;
  top: 0;
  left:0; 
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 1px;
 
}
        .login-button {
  border: none;
	outline: none;
	height: 29px;
	background: red;
	color: #fff;
	font-size: 18px;
	border-radius: 30px;

}
        .login-button:hover {

            cursor: pointer;
	        background: #39dc79;
	        color: #000;
	
        }

         .auto-style3 {
            text-align: center;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
   <asp:Button ID="back" runat="server" class="login-button" Text="Back" width="200px" OnClick="back_Click" />
     
         <h1 class="auto-style3">Job Selection Based On Personality Prediction</h1>
    
           <br />
  <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="2" RepeatDirection="Horizontal">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                VideoName:
                <asp:Label ID="VideoNameLabel" runat="server" Text='<%# Eval("VideoName") %>' />
                <br />
                VideoLink:
                <asp:Label ID="VideoLinkLabel" runat="server" Text='<%# Eval("VideoLink") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [video]"></asp:SqlDataSource>
    
  
    
    </div>
    </form>
</body>
</html>
