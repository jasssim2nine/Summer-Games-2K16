<%@ Page Title="Baseball" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Baseball.aspx.cs" Inherits="Summer_Games_2K16.Baseball" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h3 style="text-align:center;">MLB League</h3>
            <div class="col-md-offset-2 col-md-8 text-center">
                 <h2> POINTS TABLE</h2>
                    <div class="container-fluid">
                       <div class="row">
                           <div class="col-offset-3 text-center">
                               <nav>
                                 <ul class="pager">
                                   <li><a href="#">PREVIOUS WEEK</a></li>
                                   <li><a href="#">NEXT WEEK</a></li>
                                 </ul>
                               </nav>
                           </div>
                       </div><!-- end of row -->
                   </div><!--feed-->

               <asp:GridView ID="BaseballGridView" AutoGenerateColumns="false"  CssClass="table table-bordered"
                      runat="server">


                </asp:GridView>



            </div>
        </div>
    </div>
</asp:Content>
