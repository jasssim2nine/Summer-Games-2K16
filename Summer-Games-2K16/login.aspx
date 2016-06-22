<%@ Page Title="Login" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Summer_Games_2K16.login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">
                    <asp:Label runat="server" ID="StatusLabel" />
                </div>

                <div class="form-box">
                    <div class="head">WELCOME BACK</div>

                    <div class="form-group">
                    <asp:TextBox runat="server" CssClass="input" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>
                    
                    <asp:TextBox runat="server" CssClass="input" TextMode="Password"  ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>
                    </div>

                    <asp:Button Text="Login" ID="LoginButton" runat="server" CssClass="btn btn-primary log-btn" OnClick="LoginButton_Click" TabIndex="0" />

                    <p class="text-p">Don't have an account? <a href="/Register.aspx">Register now</a> </p>

                    <p class="text-p">Forgot Password <a href="/ResetPassword.aspx"> Reset Password</a> </p>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
