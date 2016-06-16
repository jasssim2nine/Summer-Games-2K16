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

        /// <summary>
        /// This method connects the database and populates the query. 
        /// </summary>
        /// @Param (object) 
        /// @Param (GetDepartments)
        /// @returns (void)

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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cricket.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                GAMES newGame = new GAMES();
                int specs = Convert.ToInt32(SpectatorsTextBox.Text);
                int GAMEID = 0;
                if (Request.QueryString.Count > 0)
                {
                    GAMEID = Convert.ToInt32(Request.QueryString["GAMEID"]);

                    newGame = (from GAMES in db.GAMES
                               where GAMES.GAMEID == GAMEID
                               select GAMES).FirstOrDefault();

                }

                newGame.DESCRIPTION = DescriptionTextBox.Text;
                newGame.SPECTATORS = specs;
                newGame.TEAM_A = TeamATextBox.Text;
                newGame.TEAM_A_POINTS = Convert.ToInt32(PointATextBox.Text);
                newGame.TEAM_B = TeamBTextBox.Text;
                newGame.TEAM_B_POINTS = Convert.ToInt32(PointBTextBox.Text);
                newGame.PLAYED_ON = Convert.ToDateTime(PlayedOnTextBox.Text);
                newGame.WINNER = WinnerTextBox.Text;

                if (GAMEID == 0)
                {
                    db.GAMES.Add(newGame);
                }

                // save our changes - also updates and inserts
                db.SaveChanges();
             Response.Redirect("~/Cricket.aspx");
            }
        }
    }
}