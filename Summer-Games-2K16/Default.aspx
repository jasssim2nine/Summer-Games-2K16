<%@ Page Title="Home" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Summer_Games_2K16.Default" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 
    Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 2.1
    Description : A default page to display the game tracking table and a main game.
    -->

    <div class="container-fluid"> 
        <div class="row">
            <div class="wrapper-bg">
                <h2 style="margin-top:15%">WELCOME TO SUMMER GAMES</h2>
                <h3>2K16</h3>              
                <a href="/Games/Mainmenu.aspx" class="view-records-a">
                    <div class="view-records center-block">
                        View Records
                    </div>
                 </a>
            </div>
        </div>
         
    </div>

    <style>
        .footer.footer.navbar{
            display:none;
        }
    </style>
    
</asp:Content>