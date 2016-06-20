using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements to connect EF
using Summer_Games_2K16.Models;
using System.Web.ModelBinding;
using System.Linq.Dynamic;

namespace Summer_Games_2K16
{
    public partial class Soccer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           SoccerGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            //if page loads the first time,populate cricket grid.
            if (!IsPostBack)
            {
                //get cricket table/data
                this.GetSoccerData();
            }
        }

        /**
     *
     *<summary>
     * This method connects to db and displays soccer data.
     * </summary> 
     * 
     * @method GetSoccerData
     * @returns {void}
     */

        protected void GetSoccerData()
        {
            var soccerVariable = "Soccer";
            //connect to EF
            using (GameConnection db = new GameConnection())
            {

                var soccerQuery = (from allGames in db.GAMES
                                    where allGames.GAMENAME == soccerVariable
                                    select allGames);

                SoccerGridView.DataSource = soccerQuery.ToList();
                SoccerGridView.DataBind();
            }
        }

        protected void SoccerGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //store the row which is clicked
            int selectedSoccerGame = e.RowIndex;

            //get the selected game id using soccer datakey 
            int GAMEID = Convert.ToInt32(SoccerGridView.DataKeys[selectedSoccerGame].Values["GAMEID"]);
            // using ef to find the selected soccer game. 
            using (GameConnection db = new GameConnection())
            {
                //create object of games class and store the query
                GAMES deletedSoccerGame = (from soccerrecords in db.GAMES
                                            where soccerrecords.GAMEID == GAMEID
                                            select soccerrecords).FirstOrDefault();

                //remove the selected cricket game from the db
                db.GAMES.Remove(deletedSoccerGame);
                // save my changes back to the database
                db.SaveChanges();

                //refresh the grid
                this.GetSoccerData();
            }

        }
        protected void SoccerGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //set the new page number
            SoccerGridView.PageIndex = e.NewPageIndex;

            //refresh the grid
            this.GetSoccerData();
        }

        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //set the page size
            SoccerGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);
            //refresh the grid
            this.GetSoccerData();
        }



    }
}