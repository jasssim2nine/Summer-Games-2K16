<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Summer_Games_2K16.ChangePassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h2>Enter Your New Password</h2>
                <asp:TextBox ID="txtNewPassword" TextMode="Password" placeholder="New Password" runat="server"></asp:TextBox>        
                    
                <br />
                <br />
                <asp:TextBox ID="txtConfirmNewPassword" TextMode="Password" placeholder="Re-Type Password" runat="server"></asp:TextBox>

                &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="70px" />

                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                <br />
                <p>Hashing the password issue!!!</p>
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>