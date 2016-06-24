﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Add_Basketball_Game.aspx.cs" Inherits="Summer_Games_2K16.Games.Add_Games.Add_Basketball_Game" %>
<%--
     Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : page to add only basketball games.
 --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
     
    <div class="container">
        <div class="row">
            <div class="form-group">
                    <label class="control-label" for="GameTypeTextBox">Game Type</label>
                    <asp:DropDownList ID="GameTypeDropDownList" runat="server"
                     AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle"
                     >
                   <asp:ListItem Text="Soccer" Value="soccer" Enabled="false"></asp:ListItem>
                        <asp:ListItem Text="Cricket" Value="cricket" Enabled="false"></asp:ListItem>
                        <asp:ListItem Text="Baseball" Value="baseball" Enabled="false" ></asp:ListItem>
                        <asp:ListItem Text="Basketball" Value="basketball" Enabled="true"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            <div class="col-md-6">                        
                <div class="form-group">
                    <label class="control-label" for="GameNameTextBox">Game Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox" placeholder="Game Name" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="GameNameTextBox" ErrorMessage="Game Name cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="GameNameTextBox"
                        ValidationExpression="[a-zA-Z ]*$" ErrorMessage="Game name cannot be numbers/special characters"
                        Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" />
                </div>
                 <div class="form-group">
                    <label class="control-label" for="DescriptionTextBox">Description</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DescriptionTextBox" placeholder="Description" ></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="DescriptionTextBox" ErrorMessage="Description cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="SpectatorsTextBox">Spectators</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorsTextBox" TextMode="Number" placeholder="Spectators" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="SpectatorsTextBox" ErrorMessage="Spectators cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SpectatorsTextBox"
                        ValidationExpression="[0-9]*$" ErrorMessage="Spectators can be numbers only"
                        Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" />
                </div>

                <div class="form-group">
                    <label class="control-label" for="PlayedOnTextBox">Played-On</label>
                    <asp:TextBox runat="server" CssClass="form-control" TextMode="Date" ID="PlayedOnTextBox" placeholder="Played On" required="true"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Invalid Date! Format: mm/dd/yyyy"
                        ControlToValidate="PlayedOnTextBox" MinimumValue="01/01/2000" MaximumValue="01/01/2999"
                        Type="Date" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="WinnerTextBox">Winner</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="WinnerTextBox" placeholder="Winner" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="WinnerTextBox" ErrorMessage="Winner cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="WinnerTextBox"
                        ValidationExpression="[a-zA-Z]*$" ErrorMessage="Winner cannot be numbers/special characters"
                        Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" />
                </div>

            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="TeamATextBox">Team A</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox" placeholder="Team Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamATextBox" ErrorMessage="Team Name cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TeamATextBox"
                        ValidationExpression="[a-zA-Z]*$" ErrorMessage="Team Name cannot be numbers/special characters"
                        Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" />
                </div>
                 <div class="form-group">
                    <label class="control-label" for="PointATextBox">Team A Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="PointATextBox" placeholder="Team A Points" required="true"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="PointATextBox" ErrorMessage="Points cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid entry! Points must be between 2 and 100"
                        ControlToValidate="PointATextBox" MinimumValue="2" MaximumValue="100"
                         Type="Integer" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TeamBTextBox">Team B </label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox" placeholder="Team Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamBTextBox" ErrorMessage="Team Name cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TeamBTextBox"
                        ValidationExpression="[a-zA-Z]*$" ErrorMessage="Team Name cannot be numbers/special characters"
                        Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" />
                </div>
                <div class="form-group">
                    <label class="control-label" for="PointBTextBox">Team B Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="PointBTextBox" placeholder="Team B Points" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PointBTextBox" ErrorMessage="Points cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Invalid entry! Points must be between 2 and 100"
                        ControlToValidate="PointBTextBox" MinimumValue="2" MaximumValue="100"
                         Type="Integer" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TotalPointsTextBox">Total Points</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox" placeholder="Total Points" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TotalPointsTextBox" ErrorMessage="Total Points cannot be empty"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Invalid entry! Total Points must be between 2 and 1000"
                        ControlToValidate="TotalPointsTextBox" MinimumValue="2" MaximumValue="1000"
                         Type="Integer" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
                </div>
            </div>                                                                               
                 <div class="col-md-4 col-md-offset-4 text-center"> 
                 <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click"  />
                <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                     OnClick="SaveButton_Click"/>
                     </div>
         </div>    

    </div>   
</asp:Content>