<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        body {
            background: rgba(0, 0, 0, 0.1);
            background: url(bc.jpg);
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

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .login {
     width: 320px;
	height: 380px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 300px;
	left: 500px;
    
	position: absolute;
	transform: translate(-30%,-45%);
	box-sizing: border-box;
    border-radius: 11px;
	padding:70px 30px;
}

h1.login-title {
  margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 20px;
 
}

.login-input {
  width: 100%;
  height: 30px;
  margin-bottom: 20px;
  padding-left:10px;
   border:none;
    border-radius: 20px 20px 20px 20px;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;

}
.login-input:focus {
    border-color:#6e8095;
    outline: none;
	/*background: transparent;*/

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
.login-lost
{
  text-align:center;
  margin-bottom:0px;
}

.login-lost a
{
  color:#666;
  text-decoration:none;
  font-size:13px;
}
.user{
	width: 70px;
	height: 70px;
	border-radius: 50%;
	position: absolute;
	top: -20px;
	left: calc( 50% - 50px);
	
}
p.login-p{
    top: 50%;
	left: 30%;
	
	margin: 0;
	padding: 0;
	font-weight: bold;
            width: 251px;
        }
 a{
	text-decoration: none;
	font-size: medium;
	color: #3333FF;
            font-style: italic;
        }

 a:hover
{
	color: #39dc79;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="content">
    <h1 class="auto-style3">Job Selection Based On Personality Prediction</h1>
    
  
  

        <table class="auto-style1">
            <tr>
               
                <td class="auto-style3">
                    
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2" NavigateUrl="~/About.aspx" ForeColor="White">HOME</asp:HyperLink>
                    
                </td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx" ForeColor="White">ABOUT US</asp:HyperLink>
                </td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style2" NavigateUrl="~/Contact.aspx" ForeColor="White">CONTACT US</asp:HyperLink>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style2"  ForeColor="White" NavigateUrl="~/user/personalityVideo.aspx">VIDEOS</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
              
            </tr>
           
        </table>
    <asp:Panel ID="panel1" runat="server" class="login" >
            <img src="a.png" class="user"/>
		
            <h1 class="login-title" style="color: #FF9900">Candidate Login</h1>
              	<p class="login-p">UserName
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtEmailid" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
         </p>
        <asp:TextBox ID="TxtEmailid" runat="server" CausesValidation="True" class="login-input" placeholder="Enter EmailId"></asp:TextBox>
                  
            <p class="login-p">Password
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtPassword" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
        </p>
                   <div class="auto-style3">
                       <asp:TextBox ID="TxtPassword" runat="server"  type=password  CausesValidation ="True" class="login-input" placeholder="Password"></asp:TextBox>
                       <asp:Button ID="btnlogin" runat="server" class="login-button" OnClick="btnlogin_Click" text="LOGIN" width="120px" />
                       <br />
                       <br />
                   
                       <a href="Registration.aspx">New Registration</a>
            </div>
			
   </asp:Panel>
 

    </div>
    </form>
</body>
</html>
