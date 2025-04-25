using E_Commerce_Web_App_B_Division.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division.Admin
{
	public partial class Admins : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                bind(); 
            }

        }

        public void bind()
        {
            TblAdmin admin = new TblAdmin();
            DataTable dtable = admin.List();
            gvData.DataSource = dtable;
            gvData.DataBind();
            txtName.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            TblAdmin admin = new TblAdmin();
            admin.Id = 0;
            admin.Name = txtName.Text;
            admin.Username = txtUsername.Text;
            admin.Password = txtPassword.Text;
            bool result = admin.Insert();
            bind();
        }
    }
}