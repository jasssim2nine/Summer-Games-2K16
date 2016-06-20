<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="Summer_Games_2K16.User_Controls.Navbar" %>
<!--
     Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : A default navbar for all pages.
 -->

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid main-nav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/Default.aspx">SUMMER GAMES 2K16</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse game-name-nav" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="hidden-xs hidden-sm"><a href="#">|</a></li>
                <li class="hvr-underline-from-center" id="soccer" runat="server"><a href="/Games/Soccer.aspx">SOCCER</a></li>
                <li class="hvr-underline-from-center" id="cricket" runat="server"><a href="/Games/Cricket.aspx">CRICKET</a></li>
                <li class="hvr-underline-from-center" id="baseball" runat="server"><a href="/Games/Baseball.aspx">BASEBALL</a></li>
                <li class="hvr-underline-from-center" id="basketball" runat="server"><a href="/Games/Basketball.aspx">BASKETBALL</a></li>                
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li class="hvr-underline-from-center" id="docs" runat="server"><a href="/docs/"><i class="fa fa-file-text-o" aria-hidden="true"></i> DOCS</a></li>
                <li class="hvr-underline-from-center" id="login" runat="server"><a href="/Login.aspx/"><i class="fa fa-sign-in" aria-hidden="true"></i> LOGIN</a></li>
                <li class="hvr-underline-from-center" id="register" runat="server"><a href="/Register.aspx/"><i class="fa fa-user-plus" aria-hidden="true"></i> REGISTER</a></li>

                <li class="hvr-underline-from-center" id="logout" runat="server"><a href="/Logout.aspx/"><i class="fa fa-sign-out" aria-hidden="true"></i> LOGOUT</a></li>

                <li class="hvr-underline-from-center" id="contact" runat="server"><a href="/Contact.aspx"><i class="fa fa-phone" aria-hidden="true"></i> GET IN TOUCH!</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
