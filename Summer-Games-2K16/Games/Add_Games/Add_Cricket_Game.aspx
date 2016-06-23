<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Add_Cricket_Game.aspx.cs" Inherits="Summer_Games_2K16.Games.Add_Games.Add_Cricket_Game" %>

<%--
     Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : adding only cricket games with this page.
 --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="GameTypeTextBox">Game Type</label>
                    <asp:DropDownList ID="GameTypeDropDownList" runat="server"
                     AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle"
                     >
                   <asp:ListItem Text="Soccer" Value="soccer" Enabled="false"></asp:ListItem>
                        <asp:ListItem Text="Cricket" Value="cricket" Enabled="true"></asp:ListItem>
                        <asp:ListItem Text="Baseball" Value="baseball" Enabled="false"></asp:ListItem>
                        <asp:ListItem Text="Basketball" Value="basketball" Enabled="false"></asp:ListItem>
                    </asp:DropDownList>
                </div>
        
                <div class="form-group">
                    <label class="control-label" for="GameNameTextBox">Game Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox" placeholder="Game Name" ></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="DescriptionTextBox">Description</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DescriptionTextBox" placeholder="Description" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="SpectatorsTextBox">Spectators</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorsTextBox" TextMode="Number" placeholder="Spectators" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="PlayedOnTextBox">Played-On</label>
                    <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="PlayedOnTextBox" placeholder="Description" required="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="control-label" for="WinnerTextBox">Winner</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="WinnerTextBox" placeholder="Winner" required="true"></asp:TextBox>
                </div>

            </div>
            <div class="col-md-6">
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
                    <label class="control-label" for="TotalPointsTextBox">Total Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox" placeholder="Total Points" required="true"></asp:TextBox>
                </div>
            </div>                                                                               
                 
                 <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click"  />
                <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                     OnClick="SaveButton_Click"/>
         </div>    

    </div>   

</asp:Content>
