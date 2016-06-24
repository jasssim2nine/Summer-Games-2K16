<%@ Page Title="Main Menu" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Summer_Games_2K16.Default" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : A default page to display the game tracking table and a main game.
    -->
    <div class="home-header">
        <h1> SUMMER GAMES 2016</h1>
    </div>
    
    <div class="container" style="padding-top:50px; padding-bottom:50px;">
        <div class="row font-view">
            <div class="col-md-3 soccer">
                <a href="soccer.aspx">
                    <img class="menu-img" src="../Assets/images/soccer.jpg"/>
                    <div class="text-center center-block cen-text">                    
                            <span class="center-block">SOCCER</span>                    
                    </div>    
                </a>            
            </div>

            <div class="col-md-3 cricket">
                <a href="cricket.aspx">
                    <img class="menu-img" src="../Assets/images/cricket.jpg" />
                    <div class="text-center center-block cen-text">                    
                            <span class="center-block">CRICKET</span>                    
                    </div>
                </a>
            </div>
            <div class="col-md-3 baseball">
                <a href="baseball.aspx">
                    <img class="menu-img" src="../Assets/images/baseball.jpg" />
                    <div class="text-center center-block cen-text" style="left:15%;">                    
                            <span class="center-block">BASEBALL</span>                    
                    </div>
                </a>
            </div>
            <div class="col-md-3 basketball">
                <a href="basketball.aspx">
                    <img class="menu-img" src="../Assets/images/basketball.jpg" />
                    <div class="text-center center-block cen-text" style="left:5%;">                    
                            <span class="center-block">BASKETBALL</span>                    
                    </div>
                </a>
            </div>
        </div>
    </div>
    
</asp:Content>