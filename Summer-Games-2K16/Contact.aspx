<%@ Page Title="Get In Touch!" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Summer_Games_2K16.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h2>Get in touch</h2>
            <div class="form-group">
                <label for="InputEmail">Your Email</label>
                <div class="input-group">
                    <input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Enter Email" required  >
                 </div>
            </div>

            </div>
        </div>
    </div>
</asp:Content>
