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

            using (DefaultConnection db = new DefaultConnection())
            {
                GAMES updatedrecord = (from c in db.GAMES
                                      where c.GAMEID == GameID
                                      select c).FirstOrDefault();

                if(updatedrecord != null)
                {
                    DescriptionTextBox.Text = updatedrecord.DESCRIPTION;
                    SpectatorsTextBox.Text = updatedrecord.SPECTATORS.ToString();
                    TeamATextBox.Text = updatedrecord.TEAM_A;
                    PointATextBox.Text = updatedrecord.TEAM_A_POINTS.ToString() ;
                    TeamBTextBox.Text = updatedrecord.TEAM_B;
                    PointBTextBox.Text = updatedrecord.TEAM_B_POINTS.ToString();
                    PlayedOnTextBox.Text = updatedrecord.PLAYED_ON.ToString();
                    WinnerTextBox.Text = updatedrecord.WINNER;
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
            Response.Redirect("~/Cricket.aspx");
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
            using (DefaultConnection db = new DefaultConnection())
            {
                // use the Student model to create a new student object and
                // save a new record
                GAMES newGame = new GAMES();

                int GameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a StudentID in it
                {
                    // get the id from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current student from EF DB
                    newGame = (from game in db.GAMES
                               where game.GAMEID == GameID
                               select game).FirstOrDefault();
                }

                // add form data to the new student record
                newGame.DESCRIPTION = DescriptionTextBox.Text;
                newGame.TEAM_A = TeamATextBox.Text;
                newGame.TEAM_B = TeamBTextBox.Text;
                newGame.TEAM_A_POINTS = Convert.ToInt32(PointATextBox.Text);
                newGame.TEAM_B_POINTS = Convert.ToInt32(PointBTextBox.Text);
                newGame.WINNER = WinnerTextBox.Text;

                
                    newGame.SPECTATORS = Convert.ToInt32(SpectatorsTextBox.Text);
                
                newGame.PLAYED_ON = Convert.ToDateTime(PlayedOnTextBox.Text);

                // use LINQ to ADO.NET to add / insert new student into the database

                if (GameID == 0)
                {
                    db.GAMES.Add(newGame);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated students page
                Response.Redirect("~/Cricket.aspx");
            }
        }
    }
}