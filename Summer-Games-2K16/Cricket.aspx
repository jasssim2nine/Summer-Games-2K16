<%@ Page Title="Cricket" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Cricket.aspx.cs" Inherits="Summer_Games_2K16.Cricket" %>
<%--
     Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : A default navbar for all pages.
 --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="overflow:hidden;">
        <div class="row">
            <h3 style="text-align:center;"> ICC CRICKET WORLD CUP</h3>
            <div class="col-md-offset-2 col-md-8 text-center">
                <h2> POINTS TABLE</h2>
                    <div class="container feed">
                       <div class="row">
                           <div class="col-offset-3 text-center">
                               <nav>
                                 <ul class="pager">
                                   <li><a href="#" >PREVIOUS WEEK</a></li>
                                   <li><a href="#">NEXT WEEK</a></li>
                                 </ul>
                               </nav>
                           </div>
                       </div><!-- end of row -->
                   </div><!--feed-->
                <!--Paging -->
                

                <asp:GridView ID="CricketGridView" AutoGenerateColumns="false"  CssClass="table table-bordered table-striped table-hover"
                    DataKeyNames="GAMEID" OnRowDeleting="CricketGridView_RowDeleting"  runat="server">
                    <Columns>
                         <asp:BoundField DataField="GAMEID" HeaderText="GameID" Visible="false"/>
                        <asp:BoundField DataField="GAMENAME" HeaderText="Game Name" Visible="true"/>
                        <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" Visible="true"/>
                        <asp:BoundField DataField="SPECTATORS" HeaderText="Spectators" Visible="true"/>
                        <asp:BoundField DataField="TEAM_A" HeaderText="Team A" Visible="true"/>
                        <asp:BoundField DataField="TEAM_B" HeaderText="Team B" Visible="true"/>
                        <asp:BoundField DataField="PLAYED_ON" HeaderText="Played on" Visible="true" DataFormatString="{0:MMM dd, yyyy}"/>
                        <asp:BoundField DataField="WINNER" HeaderText="Winner" Visible="true"/>
                        <asp:BoundField DataField="TEAM_A_POINTS" HeaderText="Team A Points" Visible="true"/>
                        <asp:BoundField DataField="TEAM_B_POINTS" HeaderText="Team B Points" Visible="true"/>
                        <asp:BoundField DataField="TOTAL_POINTS" HeaderText="Total Points" Visible="true"/>
                         <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'/>Delete"
                              ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                    
                </asp:GridView>
                
                 <a href="cricket_details.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add</a>
                
            </div>
        </div>
    </div>
    

</asp:Content>
