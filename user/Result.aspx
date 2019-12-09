<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPageResult.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="user_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .auto-style4 {
            color: red;
            font-size: xx-large;
        }
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Styles/dowmloadbtn.css" rel="stylesheet" /> 
    <br /> <br /> <br />
            <asp:Panel ID="Panel3" runat="server" Height="24px" Width="119px" style="left:750px; z-index: 106; position: absolute; top: 80px;">

    <asp:Label ID="lblName" runat="server"   Font-Bold="True"  Font-Italic="True" Font-Size="Large" CssClass="auto-style4" ></asp:Label> <br /> <br /> <br /> <br />
    </asp:Panel><br /> <br /> <br />
                <asp:Label ID="AptitudeResult" runat="server"></asp:Label>
    <br /><br />
    <br />
    <asp:Label ID="Personalityresult" runat="server"></asp:Label>
    <br /><br />
    <br /><br />
    <br />
    <br /><br />
    <br /><br /><br />
    <%--<br /><br /><br />--%>
    <br />
  
  <%--  <button class="btn"><i class="fa fa-download"></i> Download</button>--%>
    <asp:Button ID="Btndownload" visible="false" class="btn" style="width:100%;  ;"  runat="server" Text="Download Result" />
</asp:Content>

