<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Summer_Games_2K16.ChangePassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  
           <asp:TextBox ID="txtNewPassword" TextMode="Password" 
            runat="server"></asp:TextBox>

  
            <p>Confirm New Password</p>
        
            <asp:TextBox ID="txtConfirmNewPassword" TextMode="Password" runat="server">
            </asp:TextBox>



            &nbsp;<asp:Button ID="btnSave" runat="server" 
            Text="Save" OnClick="btnSave_Click" Width="70px" />

            <asp:Label ID="lblMessage" runat="server">
            </asp:Label>

            <asp:ValidationSummary ID="ValidationSummary1" 
            ForeColor="Red" runat="server" />


</asp:Content>
