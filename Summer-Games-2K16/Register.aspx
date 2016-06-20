<%@ Page Title="Register" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Summer_Games_2K16.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <h2 class="text-center">REGISTER WITH US</h2>
            <div class="col-md-6">
                <div id="login-box left" style="float:right; padding-top:20px;">
                    <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">
                        <asp:Label runat="server" ID="StatusLabel" />
                    </div>

                    <asp:TextBox runat="server" CssClass="input" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>
                    
                    <asp:TextBox runat="server" CssClass="input" TextMode="Email" ID="EmailTextBox" placeholder="Email" required="true" TabIndex="0"></asp:TextBox>

                    <asp:TextBox runat="server" CssClass="input" TextMode="Password"  ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>

                    <asp:TextBox runat="server" CssClass="input" TextMode="Password" ID="ConfirmPasswordTextBox" placeholder="Confirm Password" required="true" TabIndex="0"></asp:TextBox>
                    
                    <asp:Button Text="Register" CssClass="reg_button" runat="server" ID="RegisterButton" OnClick="RegisterButton_Click" TabIndex="0" />

                    <asp:Button Text="Cancel" CssClass="reg_button" runat="server" ID="CancelButton" OnClick="CancelButton_Click" TabIndex="0" UseSubmitBehavior="false" CausesValidation="false" />                    
                    
                </div>
            </div>

            <div class="col-md-6 hidden-xs hidden-sm">
                <div class="right left">
                     <span class="loginwith">Sign in with<br />social network</span>
    
                    <button class="social-signin facebook">Log in with facebook</button>
                    <button class="social-signin twitter">Log in with Twitter</button>
                    <button class="social-signin google">Log in with Google+</button>
                </div>
            </div>
            
        </div>
        <div class="or hidden-sm hidden-xs">OR</div>
    </div><!--end of container-->   
</asp:Content>
