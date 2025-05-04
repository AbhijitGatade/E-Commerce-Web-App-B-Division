using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division.Admin
{
	public partial class Admin : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
                HttpCookie userTypeCookie = Request.Cookies["UserType"];
                if (userTypeCookie == null || userTypeCookie.Value != "Admin")
                {
                    Response.Redirect("~/Index.aspx");
                }
            }
		}
	}
}