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
    public partial class Baseball : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BaseballGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            //if page loads the first time,populate cricket grid.
            if (!IsPostBack)
            {
                //get cricket table/data
                this.GetBaseballData();
            }
        }


        /**
         *
         *<summary>
         * This method connects to db and displays cricket data.
         * </summary> 
         * 
         * @method GetCricketData
         * @returns {void}
         */
        protected void GetBaseballData()
        {

            //connect to EF
            using (GameConnection db = new GameConnection())
            {

                var cricketQuery = (from gc in db.GAMES
                                    where gc.GAME_TYPE == "baseball"
                                    select gc);

                BaseballGridView.DataSource = cricketQuery.ToList();
                BaseballGridView.DataBind();
            }
        }

        protected void BaseballGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //store the row which is clicked
            int selectedBaseballGame = e.RowIndex;

            //get the selected game id using cricket datakey 
            int GAMEID = Convert.ToInt32(BaseballGridView.DataKeys[selectedBaseballGame].Values["GAMEID"]);
            // using ef to find the selected cricket game. 
            using (GameConnection db = new GameConnection())
            {
                //create object of games class and store the query
                GAMES deletedBaseballGame = (from baseballrecords in db.GAMES
                                            where baseballrecords.GAMEID == GAMEID
                                            select baseballrecords).FirstOrDefault();

                //remove the selected cricket game from the db
                db.GAMES.Remove(deletedBaseballGame);
                // save my changes back to the database
                db.SaveChanges();

                //refresh the grid
                this.GetBaseballData();
            }

        }
        protected void BaseballGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //set the new page number
            BaseballGridView.PageIndex = e.NewPageIndex;

            //refresh the grid
            this.GetBaseballData();
        }

        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //set the page size
            BaseballGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);
            //refresh the grid
            this.GetBaseballData();
        }
    }
}