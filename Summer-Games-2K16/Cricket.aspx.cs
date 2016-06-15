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
        /// <summary>
        /// This method connects to db and displays cricket data.
        /// </summary>
        /// @method GetCricketData
        /// @returns {void}
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

    }
}