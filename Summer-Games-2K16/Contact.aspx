<%@ Page Title="Get In Touch!" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Summer_Games_2K16.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-6 text-center">
                <h1>Contact Us</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true"></asp:TextBox>                   
                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="ContactNumberTextBox">Contact Number</label>
                    <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="ContactNumberTextBox" placeholder="Contact Number" required="true"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="MessageTextBox">Your Message</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="MessageTextBox" placeholder="Your Message goes here..." required="true"></asp:TextBox>
                   
                </div>
                <div class="text-right">
                    <a class="btn btn-warning btn-lg" id="CancelButton" href="/Games/MainMenu.aspx">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="true" OnClick="SendButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
