<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Summer_Games_2K16.ResetPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

    <asp:Button ID="btnResetPassword" runat="server" Text="Button" OnClick="btnResetPassword_Click" />

    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
</asp:Content>
