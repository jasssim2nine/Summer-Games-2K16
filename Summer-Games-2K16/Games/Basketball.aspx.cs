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

/***
 * @Author : Jasim Khan, Ebin Antoo
 * @Date : 06-22-16
 * @Description : back-end file to run CRUD for basketball games
 * @Version : v3.10
 */
namespace Summer_Games_2K16
{
    public partial class Basketball : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           BasketballGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            //if page loads the first time,populate cricket grid.
            if (!IsPostBack)
            {
                //create a session variable and stored as default
                Session["SortColumn"] = "GAMEID";
                Session["SortDirection"] = "ASC";
                //get basketball table/data
                this.GetBasketballData();
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
        protected void GetBasketballData()
        {

            //connect to EF
            using (GameConnection db = new GameConnection())
            {
                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();

                var cricketQuery = (from gc in db.GAMES
                                    where gc.GAME_TYPE == "basketball"
                                    select gc);

                BasketballGridView.DataSource = cricketQuery.AsQueryable().OrderBy(SortString).ToList();
                BasketballGridView.DataBind();
            }
        }

        protected void BasketballGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //store the row which is clicked
            int selectedBasketballGame = e.RowIndex;

            //get the selected game id using cricket datakey 
            int GAMEID = Convert.ToInt32(BasketballGridView.DataKeys[selectedBasketballGame].Values["GAMEID"]);
            // using ef to find the selected cricket game. 
            using (GameConnection db = new GameConnection())
            {
                //create object of games class and store the query
                GAMES deletedBasketballGame = (from basketballrecords in db.GAMES
                                            where basketballrecords.GAMEID == GAMEID
                                            select basketballrecords).FirstOrDefault();

                //remove the selected cricket game from the db
                db.GAMES.Remove(deletedBasketballGame);
                // save my changes back to the database
                db.SaveChanges();

                //refresh the grid
                this.GetBasketballData();
            }

        }
        protected void BasketballGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //set the new page number
            BasketballGridView.PageIndex = e.NewPageIndex;

            //refresh the grid
            this.GetBasketballData();
        }

        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //set the page size
            BasketballGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);
            //refresh the grid
            this.GetBasketballData();
        }
        /// <summary>
        /// This handler handles sorting
        /// </summary>
        /// @Param (object) sender
        /// @Param (GridViewSotEventArgs) e
        /// @returns (void)
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BasketballGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            //get the column to sort by
            Session["SortColumn"] = e.SortExpression;

            //refresh the grid
            this.GetBasketballData();
            //create a toggle for the direction
            Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";
        }
        /// <summary>
        /// This method adds the caret to the headers of the table..
        /// </summary>
        /// @Param (object) sender
        /// @Param (GridViewRowEventArgs) e
        /// @Param (void)
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BasketballGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.Header) // if header row has been clicked
                {
                    LinkButton linkbutton = new LinkButton();

                    for (int index = 0; index < BasketballGridView.Columns.Count - 1; index++)
                    {
                        if (BasketballGridView.Columns[index].SortExpression == Session["SortColumn"].ToString())
                        {
                            if (Session["SortDirection"].ToString() == "ASC")
                            {
                                linkbutton.Text = " <i class='fa fa-caret-up fa-lg'></i>";
                            }
                            else
                            {
                                linkbutton.Text = " <i class='fa fa-caret-down fa-lg'></i>";
                            }

                            e.Row.Cells[index].Controls.Add(linkbutton);
                        }
                    }
                }
            }

        }
    }
}