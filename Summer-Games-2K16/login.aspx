<%@ Page Title="Login" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Summer_Games_2K16.login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Login</h1>
                <h5>All fields required</h5>
                <br />
                 <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                </div>
                 
            </div>
          
        </div>
    </div>
</asp:Content>
