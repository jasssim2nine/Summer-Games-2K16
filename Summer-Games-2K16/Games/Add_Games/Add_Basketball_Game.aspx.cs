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
namespace Summer_Games_2K16.Games
{
    public partial class Add_Basketball_Game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {

                this.GetBasketballData();
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
        protected void GetBasketballData()
        {
            int GameID = Convert.ToInt32(Request.QueryString["GAMEID"]);

            using (GameConnection db = new GameConnection())
            {
                GAMES updatedrecord = (from gc in db.GAMES
                                       where gc.GAMEID == GameID
                                       select gc).FirstOrDefault();

                if (updatedrecord != null)
                {
                    GameTypeDropDownList.Text = updatedrecord.GAME_TYPE;
                    GameNameTextBox.Text = updatedrecord.GAMENAME;
                    DescriptionTextBox.Text = updatedrecord.DESCRIPTION;
                    SpectatorsTextBox.Text = updatedrecord.SPECTATORS.ToString();
                    TeamATextBox.Text = updatedrecord.TEAM_A;
                    PointATextBox.Text = updatedrecord.TEAM_A_POINTS.ToString();
                    TeamBTextBox.Text = updatedrecord.TEAM_B;
                    PointBTextBox.Text = updatedrecord.TEAM_B_POINTS.ToString();
                    PlayedOnTextBox.Text = updatedrecord.PLAYED_ON.ToShortDateString();
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
            Response.Redirect("/Games/Basketball.aspx");
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
                GAMES newGame = new GAMES();

                int GameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a GameID in it
                {
                    // get the id from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current cricket game from EF DB
                    newGame = (from gc in db.GAMES
                               where gc.GAMEID == GameID
                               select gc).FirstOrDefault();
                }

                // add form data to the new cricket game record
                newGame.GAME_TYPE = GameTypeDropDownList.Text;
                newGame.GAMENAME = GameNameTextBox.Text;
                newGame.DESCRIPTION = DescriptionTextBox.Text;
                newGame.TEAM_A = TeamATextBox.Text;
                newGame.TEAM_B = TeamBTextBox.Text;
                newGame.TEAM_A_POINTS = Convert.ToInt32(PointATextBox.Text);
                newGame.TEAM_B_POINTS = Convert.ToInt32(PointBTextBox.Text);
                newGame.PLAYED_ON = Convert.ToDateTime(PlayedOnTextBox.Text);
                newGame.WINNER = WinnerTextBox.Text;
                newGame.TOTAL_POINTS = Convert.ToInt32(TotalPointsTextBox.Text);

                newGame.SPECTATORS = Convert.ToInt32(SpectatorsTextBox.Text);



                // use LINQ to ADO.NET to add / insert new cricket game into the database

                if (GameID == 0)
                {
                    db.GAMES.Add(newGame);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated cricket page
                Response.Redirect("/Games/Basketball.aspx");
            }
        }
    }
}