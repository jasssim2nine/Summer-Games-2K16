using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required  for identity and owin security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Summer_Games_2K16
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //store session info authentication methods in the authentication manager object
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            //sign out
            authenticationManager.SignOut();

            //redirect
            Response.Redirect("~/Login.aspx");
        }
    }
}