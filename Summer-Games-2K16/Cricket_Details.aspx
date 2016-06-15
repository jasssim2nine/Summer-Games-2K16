<%@ Page Title="Cricket Details" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Cricket_Details.aspx.cs" Inherits="Summer_Games_2K16.Cricket_Details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Team Details</h1>
                <h5>all fields required</h5>
                 <br />
                 <div class="form-group">
                    <label class="control-label" for="DescriptionTextBox">Description</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DescriptionTextBox" placeholder="Description" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="SpectatorsTextBox">Spectators</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorsTextBox" TextMode="Number" placeholder="Spectators" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TeamATextBox">Team A</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox" placeholder="Team Name" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="PointATextBox">Team A Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="PointATextBox" placeholder="Team A Points" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TeamBTextBox">Team B </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox" placeholder="Team Name" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="PointBTextBox">Team B Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="PointBTextBox" placeholder="Team B Points" required="true"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <label class="control-label" for="PlayedOnTextBox">Played-On</label>
                    <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="PlayedOnTextBox" placeholder="Description" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="WinnerTextBox">Winner</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="WinnerTextBox" placeholder="Winner" required="true"></asp:TextBox>
                </div>
                 <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                   OnClick="SaveButton_Click" />

            </div>
        </div><!-- end of row -->
    </div><!-- end of container-->
    
      

                   
</asp:Content>
