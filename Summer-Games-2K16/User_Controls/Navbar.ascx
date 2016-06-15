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
            <a class="navbar-brand" href="#">SUMMER GAMES 2K16</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse game-name-nav" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="hidden-xs hidden-sm"><a href="#">|</a></li>
                <li><a href="#">SOCCER</a></li>
                <li><a href="#">CRICKET</a></li>
                <li><a href="#">BASEBALL</a></li>
                <li><a href="#">BASKETBALL</a></li>                
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/docs/">DOCS</a></li>
                <li><a href="#">ADMIN</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
