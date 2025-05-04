using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division.Admin
{
	public partial class Logout : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear all cookies
            if (Request.Cookies != null)
            {
                foreach (string cookieName in Request.Cookies.AllKeys)
                {
                    HttpCookie cookie = new HttpCookie(cookieName)
                    {
                        Expires = DateTime.Now.AddDays(-1) // Set expiration date to the past
                    };
                    Response.Cookies.Add(cookie);
                }
            }

            // Redirect to Index.aspx
            Response.Redirect("~/Index.aspx");
        }

    }
}