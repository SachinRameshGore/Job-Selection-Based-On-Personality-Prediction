<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

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
  transform: translateY(-30%);
 
}
         .login {
     width: 320px;
	height: 390px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 300px;
	left: 500px;
    
	position: absolute;
	transform: translate(-30%,-50%);
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
    border-radius: 25px 25px 25px 25px;

   border:none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
    /*padding: 0 25px;*/
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
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
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

         .auto-style1 {
             text-align: center;
         }

         </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="content">
    <h1 class="auto-style1">Job Selection Based On Personality Prediction</h1>
    <asp:Panel ID="panel1" runat="server" class="login" >
            <img src="a.png" class="user"/>
		
            <h1 class="login-title" style="color: #FF9900">Admin Login</h1>
              	<p class="login-p">UserName
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtUsername" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
         </p>
        <asp:TextBox ID="TxtUsername" runat="server" CausesValidation="True" class="login-input" placeholder="Enter EmailId"></asp:TextBox>
                  
            <p class="login-p">Password
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtPassword" ForeColor="Red" Font-Size="X-Large"></asp:RequiredFieldValidator>
        </p>
                   <div>
                       <asp:TextBox ID="TxtPassword" runat="server"  type="password"  CausesValidation ="True" class="login-input" placeholder="Password"></asp:TextBox>
                       <asp:Button ID="btnlogin" runat="server" class="login-button" left="250px" text="LOGIN" width="120px" OnClick="btnlogin_Click" />
                       <br />
                       <br />
                   
                      
            </div>
			
   </asp:Panel>
 
  
    
    </div>
    </form>
</body>
</html>
