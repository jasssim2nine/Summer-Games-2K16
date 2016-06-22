﻿<%@ Page Title="Basketball" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Basketball.aspx.cs" Inherits="Summer_Games_2K16.Basketball" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h3 style="text-align:center;">NBL Canada</h3>
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

                 <label for="PageSizeDropDownList"> Records Per Page: </label>
                <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                     AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle"
                     OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                   <asp:ListItem Text="3" Value="3"></asp:ListItem>
                   <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="All" Value="1000"></asp:ListItem>
               </asp:DropDownList>
                    
                  </div> 

               <asp:GridView ID="BasketballGridView" AutoGenerateColumns="false"  CssClass="table table-bordered table-striped table-hover"
                    DataKeyNames="GAMEID" OnRowDeleting="BasketballGridView_RowDeleting" AllowPaging="true"
                     PageSize="4" OnPageIndexChanging="BasketballGridView_PageIndexChanging" PagerStyle-CssClass="pagination-ys" 
                      runat="server">

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
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'/> Edit"
                                navigateurl="~/Cricket_Details.aspx" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server" 
                                DataNavigateUrlFields="GAMEID"   DataNavigateUrlFormatString="/Games/Game_Details/Basketball_Details.aspx?GameID={0}"  />
                         <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'/>Delete"
                              ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>

                </asp:GridView>
                    <div class="col-md-offset-2 col-md-8">
                      <a href="/Games/Add_Games/Add_Basketball_Game.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add</a>  
                  </div>


            </div>
        </div>
   
</asp:Content>
