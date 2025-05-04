using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Unnamed_Click(object sender, EventArgs e)
        {
			pnlLogin.Visible = false;
			pnlRegister.Visible = true;
        }

        protected void btnGotoLogin_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = true;
            pnlRegister.Visible = false;
        }
    }
}