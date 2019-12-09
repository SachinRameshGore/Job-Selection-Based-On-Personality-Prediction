<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="user_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .content {
            width: 100%;
            height: 50px;
           
            background: rgba(0,0,0,0.5);
            color: white;
  position: fixed;
  top: 0;
  left: 0;
  padding: 10px 10px;
  }
     body , html 
        {  
            /*margin: 0;
            padding:0;*/
            /*height:100%;
            width:100%;*/
            width: 100%;
            height: 1400px;
            background-image: url(bc.jpg);
            background-position: center;
            /*background-repeat: no-repeat;*/
            background-size: cover;
            
            /*background-image: url(signup_background.jpg);*/

         }

       
        .loginbox {
            width: 600px;
            height: 900px;
            background: #ff6a00;
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-20%);
            box-sizing: border-box;
            padding: 10px 20px;
            border-radius: 10%;
            background: rgba(0,0,0,0.5);
        }
        
        .loginbox a 
        {
            text-decoration:dotted;
            font-size:15px;
            line-height:20px;
            color:#ffc107;
        }

       .loginbox a:hover 
       {    
            color:#81e219;
       }
        .imagebox 
        {
            width: 55%;
            height:90%;
            top:50%;
            left:30%;
            position:absolute;
            transform:translate(-50%,-50%);
            box-sizing: border-box;
            padding:70px 30px;
            background-color:#ffc107;
            background-size:cover;
            background-repeat:no-repeat;
        }


        h1 
        {
            margin:0;
            padding:10px 1px 0px;
            text-align:center;
            font-size: 25px;
            color:red;
        }

        .loginbox p 
        {
            margin:0;
            padding:0;
            font-weight:bold;
        }

        .loginbox input 
        {
            width:100%;
            margin-bottom:22px;
        }

        .loginbox input[type="text"], input[type="password"], input[type="date"] 
        {
            border:none;
            border-bottom:1px solid #fff;
            background: transparent;
            outline:none;
            height:40px;
            color:#fff;
            font-size:16px;
        }

        .loginbox input[type="submit"] 
        {
            border:none;
            outline:none;
            height:40px;
            background:#fb2525;
            color:#fff;
            font-size:18px;
            border-radius:20px;
        }

        .loginbox input[type="submit"]:hover 
        {
            cursor:pointer;
            background:#ffc107;
            color:#000;
        }

        .avatar 
        {
            width:100px;
            height:100px;
            border-radius : 50%;
            position:absolute;
            top: -50px;
            left: calc(50% - 50px);
        }

        .auto-style1 {
            width: 245px;
            transform: translateX(-20%) translateY(-50%);
        }

        .auto-style2 {
            text-align: left;
            margin-left: 0px;
        }

        .auto-style3 {
            font-size: x-large;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="content">
                <h1><em>Job Selection Based On Personality Prediction </em></h1>
            </div>
            <div class="loginbox">
            <h1>Sign Up</h1>

                <p>User Name <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="#FF3300" CssClass="auto-style3"></asp:RequiredFieldValidator>
              </p>
                <asp:Textbox runat="server" ID="txtName" name="firstname" placeholder="Enter First Name" />
             
                <p>Enter EmilId <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#FF3300" CssClass="auto-style3"></asp:RequiredFieldValidator>
             </p>
                <asp:Textbox runat="server" ID="txtEmail" name="email" placeholder="Email ID" />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Enter a valid email id" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>   
                
                <p>Enter Birthdate   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBdate" ErrorMessage="*" ForeColor="#FF3300" CssClass="auto-style3"></asp:RequiredFieldValidator>
</p>
                <asp:Textbox runat="server" ID="txtBdate" name="Bdate" placeholder="Enter Birthdate" Type="date" />
           
                
                <table align="center" class="auto-style1">
                    <p>Select Gender    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="gender" ErrorMessage=" *" ForeColor="Red" CssClass="auto-style3"></asp:RequiredFieldValidator>
                  </p>
                    <tr>
                        <td> <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" CssClass="auto-style2" TabIndex="1" TextAlign="Left">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>
</td>
                    </tr>
                </table>

                   
                <p>Enter MobileNo    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobileNo" ErrorMessage=" *" ForeColor="Red" CssClass="auto-style3"></asp:RequiredFieldValidator>
             </p>
                 <asp:Textbox runat="server" ID="txtMobileNo" name="username" placeholder="Enter Mobile Number" CausesValidation="True" />
                
                      <%--   requires two validate digit 10 not empty--%>
                
                 <%--   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobileno" ErrorMessage="Invalid Number" ForeColor="#3366FF" ValidationExpression="\d(11)"></asp:RegularExpressionValidator>--%>

                <p>Enter Password  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="#FF3300" CssClass="auto-style3"></asp:RequiredFieldValidator>
</p>
                <asp:Textbox runat="server" ID="txtpassword" TextMode="Password" name="password" placeholder="Enter Password" CausesValidation="True" />
           
           
                <p>Enter ConfirmPassword</p>
                 <asp:Textbox runat="server" ID="confirm_password" TextMode="Password" name="confirm_password" placeholder="Confirm Password" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="confirm_password" ErrorMessage="* Both Password must be same" ForeColor="#FF3300"></asp:CompareValidator>


                <asp:Button ID="BtnRegister" runat="server" Text="SignUp" OnClick="BtnRegister_Click" />
                
                     Already Have an account???<a href="Start.aspx">Click Here</a>
			

        </div>
   
    </form>
</body>
</html>
