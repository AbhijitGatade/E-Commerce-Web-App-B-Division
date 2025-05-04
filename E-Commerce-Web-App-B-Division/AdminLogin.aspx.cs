using E_Commerce_Web_App_B_Division.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division
{
	public partial class AdminLogin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnLogin_Click(object sender, EventArgs e)
        {
			string message = "";
			string username = txtUsername.Text;
			string password = txtPassword.Text;

			TblAdmin admin = new TblAdmin();
			bool result = admin.ValidateAdmin(username, password, ref message);
			if (result)
			{
				Response.Cookies.Add(new HttpCookie("UserType", "Admin"));
                Response.Cookies.Add(new HttpCookie("Id", admin.Id.ToString()));
                Response.Cookies.Add(new HttpCookie("Name", admin.Name));
                Response.Redirect("Admin/Home.aspx");
			}
			else
			{
				lblMessage.Text = message;
            }
        }
    }
}