<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InstructionPage.aspx.cs" Inherits="user_InstructionPageaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        body {
            background: rgba(255, 255, 255, 0.5)
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
           transform: translateX(-10%) translateY(130%);
        }
        .auto-style3 {
            width: 50%;
            /*width: 320px;*/
		height: 250px;
	    width: 350px;
	/*position: absolute;*/
	top: 1150px;
    left: 50%;
	transform: translateX(-30%) translateY(0%);
	padding: 30px;
	border: 1px solid #08038C;
	box-shadow: 0 0 8px 3px #fff;
            margin-left: 157px;
            margin-right: 90px;
        }
        .auto-style4 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style8 {
            text-align: left;
            font-style: italic;
            font-size: large;
            color: #CC3300;
        }
        .auto-style9 {
            width: 30%;
            float: right;
             width: 30%;
            /*width: 320px;*/
		height: 150px;
	    width: 450px;
	/*position: absolute;*/
	top: 90%;
    left: 50%;
	transform: translateX(-30%) translateY(0%);
	background: rgba(255, 255, 255, 0.5);
	padding: 20px;
	border: 1px solid #08038C;
	box-shadow: 0 0 8px 3px #fff;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style12 {
            text-align: left;
            font-size: large;
            font-weight: bold;
            font-style: italic;
            color: #FF9900;
        }
        .auto-style13 {
            /*color: #000000;*/
        }
        .btnlogin {
            border: none;
	outline: none;
	height: 29px;
	background: red;
	color: #fff;
	font-size: 18px;
	border-radius: 30px;
        }
        .btnlogin:hover {

            cursor: pointer;
	        background: #39dc79;
	        color: #000;
	
        }
        .content {
            width: 100%;
            height: 50px;
           
            background: rgba(0,0,0,0.5);
            color: white;
  position: fixed;
  top: 0;
  left: 0;
  padding: 10px 50px;
  
  
 
}
        .footer {
             width: 100%;
            height: 50px;
            /*box-sizing: content-box;*/
            background: rgba(0,0,0,0.5);
            color: white;
  position: fixed;
  bottom: 0;
  /*padding: 0px 90px;*/
            text-align:center;
  padding: 10px 0px;
 
  left: 0;
        }
        .auto-style14 {
            height: 19px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
         <div class="content">
    <div class="auto-style1">
    <h1 class="auto-style13"><em>Job Selection Based On Personality Prediction </em> </h1></div>
      </div>
        <h1 class="auto-style2">Instructions</h1>
        <br />
        <br />
        <table align="right" class="auto-style9">
            <tr>
                <td class="auto-style10"><strong><em class="auto-style11">Personality</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style12">1.The Questionaries contains 10 Questions.Please select the situation which suits you Most.</td>
            </tr>
            <tr>
                <td class="auto-style12">2.Choose the option wisely,as you&nbsp; can&#39;t go back to Previous Questions</td>
            </tr>
            <tr>
                <td class="auto-style12">3.Select the option which describes how you are at present and not how you think you should be.</td>
            </tr>
            <tr>
                <td class="auto-style12">4.There is no negative marking</td>
            </tr>
            <tr>
                <td class="auto-style12">5.For Each Question You have 60 secs time</td>
            </tr>
            
        </table>
    
        <table align="left" class="auto-style3">
            <tr>
                <td class="auto-style4"><strong><em>Aptitude+Programming</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style8">1.Total No Of Questions =10</td>
            </tr>
            <tr>
                <td class="auto-style8">2.Each Question carry 1 mark</td>
            </tr>
            <tr>
                <td class="auto-style8">3.Time Alloted : 60secs for Each Question</td>
            </tr>
            <tr>
                <td class="auto-style8">4.Do not Refresh the Page</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:Button ID="Button2" runat="server"   Class="btnlogin"  style="margin-left: 350px; margin-top: 40px;" Font-Bold="True" Font-Italic="True" Font-Size="20pt"  Height="42px" Text="Start Test" Width="200px" OnClick="Button2_Click"  />   
      <div class="footer">
    <h1>CopyRight@2019</h1>
    
 
   

</div>
    </div>
    </form>
</body>
</html>
