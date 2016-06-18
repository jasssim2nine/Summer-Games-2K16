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
    public partial class Cricket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if page loads the first time,populate cricket grid.
            if(!IsPostBack)
            {
                //get cricket table/data
                this.GetCricketData();
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
        protected void GetCricketData()
        {
            //connect to EF
            using (DefaultConnection db = new DefaultConnection())
            {
                var cricketQuery = (from allGames in db.GAMES
                                    select allGames);

                CricketGridView.DataSource = cricketQuery.ToList();
                CricketGridView.DataBind();
            }
        }

        protected void CricketGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //store the row which is clicked
            int selectedRow = e.RowIndex;

            //get the selected department id using department datakey 
            int GAMEID = Convert.ToInt32(CricketGridView.DataKeys[selectedRow].Values["GAMEID"]);
            // using ef to find the selected department 
            using (DefaultConnection db = new DefaultConnection())
            {
                //create object of department class and store the query
                GAMES deletedCricketRow = (from cricrecords in db.GAMES
                                                where cricrecords.GAMEID == GAMEID
                                                select cricrecords).FirstOrDefault();

                //remove the selected department from the db
                db.GAMES.Remove(deletedCricketRow);
                // save my changes back to the database
                db.SaveChanges();

                //refresh the grid
                this.GetCricketData();
            }

        }

    }
}