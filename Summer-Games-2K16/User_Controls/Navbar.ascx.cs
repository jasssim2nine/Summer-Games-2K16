using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Summer_Games_2K16.User_Controls
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetActivePage();
        }

        /**
         * This method adds a css class of "active" to list items
         * relating to the current page
         * 
         * @private
         * @method SetActivePage
         * @return {void}
         */
        private void SetActivePage()
        {
            switch(Page.Title)
            {
                case "Soccer":
                    soccer.Attributes.Add("class", "nav-bottom");
                    break;
                case "Cricket":
                    cricket.Attributes.Add("class", "nav-bottom");
                    break;
                case "Baseball":
                    baseball.Attributes.Add("class", "nav-bottom");
                    break;
                case "Basketball":
                    basketball.Attributes.Add("class", "nav-bottom");
                    break;

                case "Docs":
                    docs.Attributes.Add("class", "nav-bottom");
                    break;
                case "Login":
                    login.Attributes.Add("class", "nav-bottom");
                    break;
                case "Register":
                    register.Attributes.Add("class", "nav-bottom");
                    break;
                case "Logout":
                    logout.Attributes.Add("class", "nav-bottom");
                    break;
                case "Get In Touch!":
                    contact.Attributes.Add("class", "nav-bottom");
                    break;
            }
        }
    }
}