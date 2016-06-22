<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Summer_Games_2K16.ForgotPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
    
    Email Address:
     <asp:TextBox ID="textEmail" runat="server" Width="250" />
    
    <br />
    <asp:Label ID="LabelMessage" runat="server" />
    <br />
    <asp:Button Text="Send" runat="server" OnClick="SendEmail" />

</asp:Content>
