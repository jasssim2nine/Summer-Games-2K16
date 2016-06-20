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
    public partial class Cricket_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if((!IsPostBack) && (Request.QueryString.Count >0))
            {
                this.GetCricketData();
            }
        }



        /**
         * 
         * <summary>
         * This method gets the cricket data from database
         * </summary>
         * @method GetDepartments
         * 
         * @returns {void}      
         */
        protected void GetCricketData()
        {
            int GameID = Convert.ToInt32(Request.QueryString["GAMEID"]);

            using (GameConnection db = new GameConnection())
            {
                GAMES updatedrecord = (from c in db.GAMES
                                      where c.GAMEID == GameID
                                      select c).FirstOrDefault();

                if(updatedrecord != null)
                {
                   GameNameDropDownList.Text = updatedrecord.GAMENAME;
                    DescriptionTextBox.Text = updatedrecord.DESCRIPTION;
                    SpectatorsTextBox.Text = updatedrecord.SPECTATORS.ToString();
                    TeamATextBox.Text = updatedrecord.TEAM_A;
                    PointATextBox.Text = updatedrecord.TEAM_A_POINTS.ToString() ;
                    TeamBTextBox.Text = updatedrecord.TEAM_B;
                    PointBTextBox.Text = updatedrecord.TEAM_B_POINTS.ToString();
                    PlayedOnTextBox.Text = updatedrecord.PLAYED_ON.ToString();
                    WinnerTextBox.Text = updatedrecord.WINNER;
                    TotalPointsTextBox.Text = updatedrecord.TOTAL_POINTS.ToString();
                }
            }
        }

        /**          
        * <summary>
        * This method takes back to the previous page, cancel
        * </summary>
        * @method CancelButton_Click
        * @param {object} sender
        * @param {EventArgs} e
        * @returns {void}      
        */
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Games/Cricket.aspx");
        }
        /**          
         * <summary>
         * This method saves the operation
         * </summary>
         * @method SaveButton_Click
         * @param {object} sender
         * @param {EventArgs} e
         * @returns {void}      
         */
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (GameConnection db = new GameConnection())
            {
                // use the Game Tracker model to create a new cricket game object and
                // save a new record
                GAMES newCricketGame = new GAMES();

                int GameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a GameID in it
                {
                    // get the id from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current cricket game from EF DB
                    newCricketGame = (from game in db.GAMES
                               where game.GAMEID == GameID
                               select game).FirstOrDefault();
                }

                // add form data to the new cricket game record
                newCricketGame.GAMENAME = GameNameDropDownList.Text;
                newCricketGame.DESCRIPTION = DescriptionTextBox.Text;
                newCricketGame.TEAM_A = TeamATextBox.Text;
                newCricketGame.TEAM_B = TeamBTextBox.Text;
                newCricketGame.TEAM_A_POINTS = Convert.ToInt32(PointATextBox.Text);
                newCricketGame.TEAM_B_POINTS = Convert.ToInt32(PointBTextBox.Text);
                newCricketGame.WINNER = WinnerTextBox.Text;
                newCricketGame.TOTAL_POINTS = Convert.ToInt32(TotalPointsTextBox.Text);


                newCricketGame.SPECTATORS = Convert.ToInt32(SpectatorsTextBox.Text);

                newCricketGame.PLAYED_ON = Convert.ToDateTime(PlayedOnTextBox.Text);

                // use LINQ to ADO.NET to add / insert new cricket game into the database

                if (GameID == 0)
                {
                    db.GAMES.Add(newCricketGame);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated cricket page
                Response.Redirect("~/Games/Cricket.aspx");
            }
        }
        /**          
        * <summary>
        * This method sets the selected game
        * </summary>
        * @method GameNameDropDownList_SelectedIndexChanged
        * @param {object} sender
        * @param {EventArgs} e
        * @returns {null}      
        */
        protected void GameNameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}