<%@ Page Title="Reset Password" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Summer_Games_2K16.ResetPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="text-center">
                    <h2>Reset Password Via Email</h2>
                        <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">
                            <asp:Label runat="server" ID="StatusLabel" />
                        </div>
                        <div class="alert alert-success" id="MessageFlash" runat="server" visible="false">
                            <asp:Label runat="server" ID="MessageLabel" />
                        </div>
                        <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name"></asp:TextBox>

                        <asp:Button ID="btnResetPassword" runat="server" Text="Email Link" OnClick="btnResetPassword_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
